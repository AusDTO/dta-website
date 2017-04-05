---
title: "DTA databases done differently with diffs"
category: [blog]
tag: 'technology'
author: Robert Lechte
author-excerpt: "Robert Lechte is a Developer at the Digital Transformation Agency.
GitHub: djrobstep"
thumbnail: /images/blog-thumbnails/Techblog_sml.jpg
hero-image: /images/blog-content/Techblog_hero.jpg
searchexcerpt: "Diffs are a ubiquitous concept in software, used to represent changes between two data structures. At DTA, we’re trialling a new way to work with database diffs to make our migrations easier and more robust."
---

![Eloise Aitken, ICT graduate stands in front of the Geoscience Australia building.]({{ site.url }}{{ site.baseurl }}{{ page.hero-image }})

*Caption: Eloise Aitken, ICT graduate at Geoscience Australia.*

One place that we’re using diffs successfully is in the Digital Marketplace. On the Digital Marketplace project, things change quickly. As we improve and enhance our code we need to make lots of changes, including how we store data in the application database. Changing the structure of your data is known in tech parlance as ‘database migration’. When your application and data is continually changing and evolving, that means lots of database migrations.

On the Digital Marketplace project we found the status quo of migration tools and techniques wasn’t meeting our needs. To overcome this we began trialling a different approach to database migrations.

What we ended up doing was developing new code that not only improved our process internally, but could have a flow-on benefit to other database-driven software projects.

## The old way

Traditional migration tools (such as those built into frameworks such as Rails and Django) require you to maintain a set of migration files. Each time you want to make some changes to your database structure, you create a new file and define all the changes you want to make. In each file you create a version number, and when these files are run, the database structure gets updated to the latest version.

Unfortunately, this approach presents several disadvantages.

- **It’s tedious.** Each time you want to make even a minor change, you need to create a whole new file, meaning any database changes are slow.
- **It produces clutter.** As you continue to make changes over time, you build up more and more files.
- **Version numbers are unreliable.** Just because the version number gets updated, doesn't mean the database structure has actually been updated properly.
- **It's bad for testing.** There are a lot of things to worry about when changing your database on a live service. Does our development schema match live? Does our test schema match live? Will our migration run on staging and live without breaking? How long will our migration take to run on the production data set? Will our migration cause downtime between deploy and migration? Traditional migration tools don't help you test any of these things.

## The new way

Our new approach to migrations involved new tools but more importantly, new conceptual thinking.

- Instead of framework-specific migration tools, we use a schema diff tool that helps generate suitable migration scripts no matter the framework. It also provides functionality to allow us to test that the database state exactly matches the state we intend.
- Instead of a creating a file per change, we use the schema diff tool to sync our development databases automatically.
- Instead of building a history of every version of the database structure, we only care about three versions: empty, development, and current production state.
- Instead of version numbers, we directly test our planned changes against the actual structure of the production database.   
## Outcome

As a result of challenging the status quo, database-related development tasks are faster and less painful, our deployments are much more robust and we’ve eliminated a lot of unwanted code. Overall, a big win!



Caption: It felt good to be able to remove over 2000 lines of old code.

## How it works

Our new workflow requires three main components:

- The database schema diff tool (mentioned above). 
- Miscellaneous supporting code for doing things like accessing the production schema, creating temporary databases for doing schema comparisons and running tests.
- A deployment script that applies any necessary changes and while doing so checks that applying the changes will result in the correct outcome. 

### Local development

In the Digital Marketplace project, we define our intended database structure in code. Therefore we want the actual database our code is using to always match this code-defined structure.

To reiterate, this process was previously drawn out by having to create migration files to manage every small change.Under our new workflow, we can now sync the database to the intended state with a single command. In keeping with our design principle -- [make things open: it makes them better](https://www.dta.gov.au/standard/design-principles/#make-things-open-it-makes-things-better) -- here’s the code showing how we built this in a few lines using migra diff tool library:

from migra import Migration
from sqlbag import S, temporary_database as temporary_db

def sync():
	DB_URL = get_current_app_db_url()

	with temporary_db() as TEMP_DB_URL:
    	load_from_app_model(TEMP_DB_URL)

    	with S(DB_URL) as s_current, S(TEMP_DB_URL) as s_target:
        	m = Migration(s_current, s_target)
        	m.set_safety(False)
        	m.add_all_changes()

        	if m.statements:
            	print('THE FOLLOWING CHANGES ARE PENDING:', end='\n\n')
            	print(m.sql)

            	if prompt('Apply these changes?'):
                	print('Applying...')
                	m.apply()
            	else:
                	print('Not applying.')
        	else:
            	print('Already synced.')

While this is only a few lines of code, there’s a lot happening.

We first set up a temporary database and load the intended state from scratch. Then we use the Migration object provided by the database diff tool to calculate the differences between the temporary database and our development database. The code then generates (as m.sql) the necessary statements to change the development database to the intended state. The script outputs these changes and prompts to apply these changes. Once these changes are applied, job done!

The only time we wouldn’t want to apply these auto-generated changes is if the changes required deleting data that we wanted to keep. But most of the time we can apply them directly. This feels very fast and automatic and doesn’t distract us from more pertinent development tasks.

### Preparing migrations

Making changes to the production database requires more care. Because we always want to review any changes before they are applied, we generate a migration script in advance. We do this with a similar procedure to the code above (with the obvious difference that we compare our intended state against the production state instead).

While this new workflow and tooling makes things much more automatic, there’s always a need for careful review. No tool can automatically generate a correct migration script in all cases.

When our migration script has been generated, edited and reviewed to our satisfaction, we add it to our application source control, where it will be applied as part of deployment procedures.

Once migration scripts have been applied we can discard them from source control, which means we avoid cluttering our environment with a history of migration scripts.

### Deployment

Deploying these migration scripts requires very different logic than traditional tools that rely on version numbers.

We’ve scripted our deployment to automatically check if any migration files need applying or if they have already been applied successfully.

We’ve also added an extra safeguard that  any migration scripts are first applied on a copy of the production database structure immediately before they are applied for real. If there are any problems, the migration aborts. 
While this logic is more complex than version numbers, it has the benefit of adding a layer of reliability and improving accuracy through avoiding version numbers.

### Try it yourself

We think there are real advantages to this comparison-based workflow and are firmly of the belief  other database-driven software projects could benefit from similar changes. 

We’d love for you to try it on your own applications and share your feedback with us.

You can discover more about the ‘migra’ diff tool at the official documentation site: 

[https://migra.readthedocs.io/](https://migra.readthedocs.io/en/latest/)

### Project links

[Visit the Digital Marketplace](https://marketplace.service.gov.au/)

Join the Digital Marketplace as a [buyer](https://marketplace.service.gov.au/signup) or [seller](https://marketplace.service.gov.au/signup).

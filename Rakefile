# coding: utf-8

require 'net/http'
require 'fileutils'

task :default => :ui_kit_update

UIKIT_REPO = 'https://github.com/AusDTO/gov-au-ui-kit.git'
UIKIT_VENDOR_DIR = '_assets/vendor/dto-ui-kit'
UIKIT_JS = 'https://gov-au-ui-kit.apps.staging.digital.gov.au/latest/ui-kit.js'

desc 'Update uikit using git clone'
task :ui_kit_update do

  Dir.mktmpdir do |dir|

    puts "Cloning #{UIKIT_REPO}..."
    sh "git clone #{UIKIT_REPO} #{dir}"

    #TODO get this to work
    # latest_tag=`git describe --tags`
    # puts "Using latest tag: #{latest_tag}"
    # sh "git checkout #{latest_tag}"

    FileUtils.rm_r (UIKIT_VENDOR_DIR) if File.exist?(UIKIT_VENDOR_DIR)

    puts "Copying to #{UIKIT_VENDOR_DIR}..."
    sh "cp -R #{dir} #{UIKIT_VENDOR_DIR}"
  end

  #TODO why does this error? for now will just download the js.
  # puts 'Building ui-kit...'
  # Dir.chdir(dir) do
  #   unless system 'npm install'
  #     exit 1
  #   end
  #   unless system 'npm run-script build'
  #     exit 1
  #   end
  # end
  puts "Downloading #{UIKIT_JS}..."
  file = File.new "_assets/vendor/ui-kit.js", 'wb+'
  file.write Net::HTTP.get(URI.parse(UIKIT_JS))

end

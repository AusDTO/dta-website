function isRetina() {
    var mediaQuery = "(-webkit-min-device-pixel-ratio: 1.5),\
					  (min--moz-device-pixel-ratio: 1.5),\
					  (-o-min-device-pixel-ratio: 3/2),\
					  (min-resolution: 1.5dppx)";

    if (window.devicePixelRatio > 1)
        return true;

    if (window.matchMedia && window.matchMedia(mediaQuery).matches)
        return true;

    return false;
};

// The site logo <img> is hidden on startup.
// We check for a retina display, set the appropriate img src and then show the site logo.

var el = document.getElementById("site-logo-img");
var src = el.getAttribute("data-1x");
if (isRetina()) {
    //Change the image to the 2x version.
    src = el.getAttribute("data-2x");
}
el.setAttribute("src", src);

//Show the logo
el.className = el.className.replace("hidden","");

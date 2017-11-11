var page = require('webpage').create();
var host = "127.0.0.1";
var url = "https://"+host+"/index.php?check-msg";
var timeout = 2000;

phantom.addCookie({
    'name': 'Flag',
    'value': '899a4299c25cf89fbc2c73e11f99986a',
    'domain': host,
    'path': '/',
    'httponly': false
});

page.onNavigationRequested = function(url, type, willNavigate, main) {
    console.log("[URL] URL="+url);
};

page.settings.resourceTimeout = timeout;
page.onResourceTimeout = function(e) {
    setTimeout(function(){
        console.log("[INFO] Timeout")
        phantom.exit();
    }, 1);
};

page.open(url, function(status) {
    console.log("[INFO] rendered page");
    setTimeout(function(){
        phantom.exit();
    }, 1);
});

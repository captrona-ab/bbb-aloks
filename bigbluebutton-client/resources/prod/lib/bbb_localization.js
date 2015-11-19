// Check locale
var localeChain = "sv_SE";

if (navigator.language)
        localeChain = navigator.language;
else if (navigator.browserLanguage)
        localeChain = navigator.browserLanguage;

if(/^([a-z]+)-([a-z]+)$/i.test(localeChain)){
        var matches = /^([a-z]+)-([a-z]+)$/i.exec(localeChain);
        localeChain = matches[1].toLowerCase() + "_" + matches[2].toUpperCase();
}
else if(/^en$/i.test(localeChain)){
        localeChain = "en_US";
}
else if(/^([a-z]+)$/i.test(localeChain)){
        var matches = /^([a-z]+)$/i.exec(localeChain);
        localeChain = matches[1].toLowerCase() + "_" + matches[1].toUpperCase();
}
else{
        localeChain = "sv_SE";
}
// Stritcly sets the language to swedish, remove this line to enable dynamic language changes. Based on the code above.
localeChain = "sv_SE";

function getLanguage(){
        return localeChain;
}


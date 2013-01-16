/*
 * Rule: font should not be used as shorthand
 */

CSSLint.addRule({

    //rule information
    id: "font shorthand",
    name: "use long notation for font",
    desc: "font should not be used since it causes confusion in shorthand notation",
    browsers: "All",

    //initialization
    init: function(parser, reporter){
        var rule = this;

        parser.addListener("property", function(event){
            var name = event.property.text;
            var name = name.toLowerCase();
            // the check is handled entirely by the parser-lib (https://github.com/nzakas/parser-lib)
           if (name==="font") {
                  reporter.report("Don't use shorthand notation for font: " + name, event.line, event.col, rule);
           }

        });
    }

});
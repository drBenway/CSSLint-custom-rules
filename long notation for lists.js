/*
 * Rule: list style short not be used in shorthand notation
 */

CSSLint.addRule({

    //rule information
    id: "liststyle shorthand",
    name: "use long notation for list style",
    desc: "list style should not be used in short notation since it causes confusion",
    browsers: "All",

    //initialization
    init: function(parser, reporter){
        var rule = this;

        parser.addListener("property", function(event){
            var name = event.property.text;
            var name = name.toLowerCase();
            // the check is handled entirely by the parser-lib (https://github.com/nzakas/parser-lib)
           if (name==="list-style") {
                  reporter.report("Don't use shorthand notation for list-style: " + name, event.line, event.col, rule);
           }

        });
    }

});
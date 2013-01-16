/*
 * Rule: Selectors that look like regular expressions are slow and should be avoided.
 */
/*global CSSLint*/
CSSLint.addRule({

    //rule informations
    id: "hex colors",
    name: "Require hex colors in lowercase",
    desc: "Always use hex colors and in lowercase",
    browsers: "all",
    //initialization
    init: function(parser, reporter) {
        var rule = this,
                lastProperty,
                propertiesToCheck = {
            color: 1,
            background: 1,
            "background-color": 1
        },
                properties;

        function startRule(event) {
            properties = {};
            lastProperty = null;
        }

        parser.addListener("startrule", startRule);
        parser.addListener("startfontface", startRule);
        parser.addListener("startpage", startRule);
        parser.addListener("startpagemargin", startRule);
        parser.addListener("startkeyframerule", startRule);

        parser.addListener("property", function(event) {
            var property = event.property,
                    name = property.text.toLowerCase(),
                    parts = event.value.parts,
                    i = 0,
                    len = parts.length;

            if (propertiesToCheck[name]) {
                while (i < len) {
                    //console.log(parts);
                    if (parts[i].type == "color") {
                        if (parts[i].text.indexOf("#") > -1) {
                            if (/[^#a-z0-9]/.test(parts[i].text)) {
                                reporter.report("Colors should be all lowercase: " + parts[i], event.line, event.col, rule);
                            }
                        }
                    
                    else {
                        reporter.report("Colors should be in hexadecimal notation: " + parts[i], event.line, event.col, rule);
                    }
                    }


                    i++;
                }
            }

            lastProperty = event;
        });

    }

});
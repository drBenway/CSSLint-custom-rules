/**
* properties should be lowercase
*/


CSSLint.addRule({

    //rule information
    id: "lowercase-properties",
    name: "use only lowercase properties",
    desc: "Properties should be in lowercase.",
    browsers: "All",
    //initialization
    init: function(parser, reporter) {
        var rule = this;

        parser.addListener("property", function(event) {
            var name = event.property.text;

                                if (/([A-Z])/.test(name)) {
                                    reporter.report("Properties should be in lowercase", event.line, event.col, rule);// @todo
                                }
                            

        });
    }

});
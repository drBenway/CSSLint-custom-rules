/*
 * Rule: Selectors that look like regular expressions are slow and should be avoided.
 */
/*global CSSLint*/
CSSLint.addRule({

    //rule information
    id: "namingconventions-nounderscore",
    name: "Disallow classes with underscores",
    desc: "classnames should use dash instead of underscore",
    browsers: "All",
    //initialization
    init: function(parser, reporter) {
        var rule = this;

        parser.addListener("startrule", function(event) {
            var selectors = event.selectors,
                    selector,
                    part,
                    modifier,
                    i, j, k;

            for (i = 0; i < selectors.length; i++) {
                selector = selectors[i];
                for (j = 0; j < selector.parts.length; j++) {
                    part = selector.parts[j];
                    if (part.type == parser.SELECTOR_PART_TYPE) {
                        for (k = 0; k < part.modifiers.length; k++) {
                            modifier = part.modifiers[k];
                            if (modifier.type == "class") {
                                if (/[^\.a-z0-9-]/.test(modifier)) {
                                    reporter.report("Use only alphanumeric character ([a-z]lowercase) and dashes in classnames. " + modifier, modifier.line, modifier.col, rule);
                                }
                            }

                        }
                    }
                }
            }
        });
    }

});
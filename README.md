CSSLint-custom-rules
====================

custom rules for CSSLint. 

This repo has a set of custom rules that you can add to csslint.
Copy paste them as you see fit. 

I'm using the csslint node version. For me adding the rules is done by,
navigating to "/usr/local/lib/node_modules/csslint/lib/ and altering the csslint-node.js file.
For a video example, see the movie examples folder.


Rules:
======
Not all the rules below are provided. I do plan to do this in future versions.

* disallow classes with underscores (should use dash)
* disallow classes with uppercases
* properties should be in lowercase
* color codes should be in lowercase
* color codes, write full number expl: #ffffff instead of #fff
* don't use presentational names for class names expl: no .red-link
* no space between property and the :  => border:  instead of border :
* have one space after : and one space between the values => border: 1px solid black;
* don't use shorthand notation for fonts 
=> bad: font: arial 15px/17px
body{font: bold 15px arial;}
h1{font: 25px arial}
In this case h1 will not be bold, wich is confusing
* don't use shorthand notation for list items (cause confusion)
* end vendor prefixes with final recomendation
=> webkit-border-radius: 20px;
border-radius: 20px;
More info can be found in the wiki


generating report:
==================
csslint has a cli option to export your results to an xml file:
csslint yourcss.css --format=lint-xml > csslint.xml

After exporting, you can transform the output with the xslt file in this repo.
Mac users can use xsltproc in the terminal like so:

xsltproc csslint-report.xslt csslint.xml > csslint-report.html

to generate an html file with the results.

For your convenience, I also included a bash script that does all this in one go. 
just "bash csslint-report.sh path/to/your/cssfile"


Movies
======
To help you get an idea how all this works, visit the movie section

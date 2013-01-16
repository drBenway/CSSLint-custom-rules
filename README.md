CSSLint-custom-rules
====================

custom rules for CSSLint. Not all the rules below are provided.

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

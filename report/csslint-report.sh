#!/bin/sh
csslint $1 --format="lint-xml" > csslint.xml
sleep 1
xsltproc csslint-report.xslt csslint.xml > csslint-report.html
sleep 1
open 'csslint-report.html'

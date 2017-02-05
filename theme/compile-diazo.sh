#!/bin/bash

. /usr/local/reloading/bin/activate
diazocompiler --network -r rules.xml | sed 's/django/reloading/g' > theme.xsl

import os
import sys

os.environ['DJANGO_SETTINGS_MODULE'] = 'reloading.settings'

# http://www.foxhop.net/django-virtualenv-apache-mod_wsgi

import site
site.addsitedir('/usr/local/reloading/lib/python2.7/site-packages')

os.environ['PYTHON_EGG_CACHE'] = '/usr/local/reloading/egg-cache'

# recompile diazo theme

from lxml import etree
from diazo.compiler import compile_theme

rules = "/usr/local/reloading/rules.xml"

compiled_theme = compile_theme(rules, read_network=True)

#f = open("/usr/local/reloading/theme/theme.xsl", "w")
#f.write(str(compiled_theme).replace('django', 'reloading'))
#f.close()

additional_paths = ['/usr/local/reloading', '/usr/local/reloading/app', '/usr/local/reloading/app/reloading']

for path in additional_paths:
    if path not in sys.path:
        sys.path.append(path)

#import django.core.handlers.wsgi
#application = django.core.handlers.wsgi.WSGIHandler()

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()



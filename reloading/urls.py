from django.conf.urls.defaults import *
from reloading import views

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    (r'^/*$', views.listing),
    (r'^caliber/(?P<slug>[a-z0-9\-]+)', views.byCaliber),
)

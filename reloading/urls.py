from django.conf.urls.defaults import *
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    (r'^admin/', include(admin.site.urls)),
    url(r'^/*$', 'reloading.views.listing', name='listing_view'),
    url(r'^caliber/(?P<slug>[a-z0-9\\-]+)$', 'reloading.views.byCaliber', name='caliber_view'),
)



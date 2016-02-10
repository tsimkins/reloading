from django.conf.urls.defaults import patterns, include, url
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    (r'^reloading/admin/', include(admin.site.urls)),
    url(r'^reloading/$', 'reloading.views.listing', name='listing_view'),
    url(r'^reloading/caliber/(?P<slug>[a-z0-9\\-]+)$', 'reloading.views.byCaliber', name='caliber_view'),
)






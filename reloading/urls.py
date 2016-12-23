from django.conf.urls import url
from django.contrib import admin
from . import views

admin.autodiscover()

urlpatterns = [
    url(r'^reloading/admin/', admin.site.urls),
    url(r'^reloading/*$', views.listing, name='listing_view'),
    url(r'^reloading/caliber/(?P<slug>[a-z0-9\\-]+)$', views.byCaliber, name='caliber_view'),
]






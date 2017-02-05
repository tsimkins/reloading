from django.conf.urls import url, include

urlpatterns = [
               url(r'^reloading/', include('reloading.urls')),
]



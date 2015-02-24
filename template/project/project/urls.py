from django.conf.urls import patterns, include, url
from django.contrib import admin
from __djapp__.views import index

urlpatterns = patterns('',
    url(r'^$', index),

    url(r'^admin/', include(admin.site.urls)),

    url('^accounts/', include('django.contrib.auth.urls', namespace="auth")),
    url('', include('social.apps.django_app.urls', namespace='social'))
)

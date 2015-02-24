from django.shortcuts import render
from django.db.models import Q

from django.template import RequestContext
from django.shortcuts import get_object_or_404, render_to_response

def index(request):
    return render_to_response("index.html", None, RequestContext(request))

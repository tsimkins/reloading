from django.http import HttpResponse
import datetime
from django.template.loader import get_template
from django.template import Context, loader
from models import Caliber, Result, Weapon

def byCaliber(request, slug):
    t = loader.get_template('caliber.html')
    results = Result.objects.filter(load__caliber__slug=slug).order_by('weapon', 'load__bullet__weight', 'load__powder', 'load__powder_weight')
    context = Context({'results' : results })
    return HttpResponse(t.render(context))
    
def listing(request):
    t = loader.get_template('listing.html')
    results = Caliber.objects.all().order_by('name')
    weapons = Weapon.objects.all().order_by('name')
    context = Context({'results' : results, 'weapons' : weapons })
    return HttpResponse(t.render(context))

    


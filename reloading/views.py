from django.http import HttpResponse
import datetime
from django.template.loader import get_template
from django.template import Context, loader
from models import Caliber, Result, Weapon

def byCaliber(request, slug):
    t = loader.get_template('caliber.html')
    calibers = Caliber.objects.all().order_by('name')
    caliber = Caliber.objects.filter(slug=slug).order_by('name')[0]
    results = Result.objects.filter(load__caliber__slug=slug).order_by('weapon__description', 'load__bullet__weight', 'load__powder', 'load__powder_weight')
    weapons = Weapon.objects.all().order_by('description')
    context = Context({'caliber' : caliber, 'calibers' : calibers, 'results' : results, 'weapons' : weapons })
    return HttpResponse(t.render(context))
    
def listing(request):
    t = loader.get_template('listing.html')
    calibers = Caliber.objects.all().order_by('name')
    weapons = Weapon.objects.all().order_by('description')
    context = Context({'calibers' : calibers, 'weapons' : weapons, 'caliber' : None })
    return HttpResponse(t.render(context))

    


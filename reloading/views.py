from django.http import HttpResponse
from django.template.loader import get_template
from django.template import Context, RequestContext, loader
from django.views.decorators.csrf import csrf_protect, ensure_csrf_cookie
from models import Caliber, Result, Weapon
from django.shortcuts import render

import datetime

facet_on = [
            ('load__bullet__weight', 'bullet_weight', 
             'Bullet Weight', lambda x: x.load.bullet.weight),

            ('load__powder__name', 'powder', 
             'Powder', lambda x: x.load.powder.name),

            ('load__primer__name', 'primer', 
             'Primer', lambda x: x.load.primer.name), 


            ]
@csrf_protect
def byCaliber(request, slug):

    t = loader.get_template('caliber.html')

    calibers = Caliber.objects.all().order_by('name')
    caliber = Caliber.objects.filter(slug=slug).order_by('name')[0]

    results_query = Result.objects.filter(load__caliber__slug=slug)
    
    filtered_query = results_query
    facet_filter = {}
    
    if request.POST:

        request_data = dict(request.POST.lists())

        for (field_key, field_name, field_label, f) in facet_on:
            v = request_data.get(field_name, [])

            if v:

                if not isinstance(v, (list, tuple)):
                    v = [v,]

                facet_filter[field_name] = list(v)
                facet_filter[field_name].extend([int(x) for x in v if x.isdigit()])
                
                
                filtered_query = filtered_query.filter(**{'%s__in' % field_key : v})
    
        
    filtered_query = filtered_query.order_by('weapon__description', 
                                             'load__bullet__weight', 
                                             'load__powder', 'load__powder_weight')

    weapons = []
    results = {}
    
    for r in filtered_query:
        w = r.weapon
        if not results.get(w):
            weapons.append(w)
            results[w] = {
                'data' : [],
                'notes' : [],
            }
        results[w]['data'].append( r ) 
        if r.notes:
            results[w]['notes'].append(r.notes)

    params = {
                       'slug' : slug,
                       'caliber' : caliber, 
                       'calibers' : calibers, 
                       'results' : sorted(results.iteritems()),
                       'facets' : byCaliberFacets(facet_filter, results_query, filtered_query),
                       'weapons' : sorted(weapons) }

    return HttpResponse(render(request, 'caliber.html', params))
    
def listing(request):
    t = loader.get_template('listing.html')
    calibers = Caliber.objects.all().order_by('name')
    weapons = Weapon.objects.all().order_by('description')
    context = Context({'calibers' : calibers, 'weapons' : weapons, 'caliber' : None })
    return HttpResponse(t.render(context))

def byCaliberFacets(facet_filter, results_query, filtered_query):

    data = []

    for (field_key, field_name, field_label, f) in facet_on:

        all_values = [f(x) for x in results_query]
        filtered_values = [f(x) for x in filtered_query]

        value_count = [
                       {
                        'name' : x, 
                        'checked' : x in facet_filter.get(field_name, []),
                        'disabled' : filtered_values.count(x) == 0,
                        'count' : filtered_values.count(x)
                        } for x in set(all_values)]

        value_count.sort(key=lambda x: x.get('name'))

        data.append(
            {
                'name' : field_name,
                'label' : field_label,
                'values' : value_count,
            }
        )

    t = loader.get_template('caliber_facets.html')
    context = Context({'data' : data})
    return t.render(context)

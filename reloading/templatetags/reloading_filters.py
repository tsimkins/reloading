from django import template
register = template.Library()

@register.filter()    
def getWeaponsForCaliber(caliber, weapons):
    results = []
    for w in weapons:
        if caliber in w.caliber.all():
            results.append(w)
    return results
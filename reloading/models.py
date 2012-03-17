from django.db import models
from numpy import average, std
from django.template.defaultfilters import slugify
from django.core import urlresolvers

# Create your models here.
class Powder(models.Model):
    name=models.CharField(max_length=255)
    description=models.CharField(max_length=255,blank=True)
    manufacturer=models.CharField(max_length=255)

    def __unicode__(self):
        return self.name

class Caliber(models.Model):
    slug=models.SlugField(blank=True)
    name=models.CharField(max_length=255)
    photo=models.ImageField(upload_to='/usr/local/reloading/reloading_app/images/caliber',blank=True)

    def __unicode__(self):
        return self.name
        
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name)
        super(Caliber, self).save(*args, **kwargs)

    def get_absolute_url(self):
        permalink = urlresolvers.reverse('caliber_view', kwargs={'slug' : self.slug})
        return permalink

class Weapon(models.Model):
    name=models.CharField(max_length=255)
    description=models.CharField(max_length=255)
    caliber=models.ManyToManyField(Caliber)
    barrel_length=models.DecimalField(max_digits=3,decimal_places=1)
    photo=models.ImageField(upload_to='/usr/local/reloading/reloading_app/images/weapon',blank=True)

    def __unicode__(self):
        return self.description



class Bullet(models.Model):
    manufacturer=models.CharField(max_length=255)
    caliber=models.ManyToManyField(Caliber)
    material=models.CharField(max_length=255, choices=(
                                                    ('lead_swaged' , 'Lead/Swaged'),
                                                    ('lead_cast' , 'Lead/Cast'),
                                                     ('jacketed' , 'Jacketed'),
                                                      )
                              )
    type=models.CharField(max_length=255, choices=(
                                                    ('JSP', 'Jacketed Soft Point'),
                                                    ('JHP', 'Jacketed Hollow Point'),
                                                    ('FMJ', 'Full Metal Jacket'),
                                                    ('LSWCHP', 'Lead Semi-Wadcutter Hollowpoint'),
                                                  )
                        )
    weight=models.IntegerField()

    def __unicode__(self):
        return '%d grain %s %s' % (self.weight, self.manufacturer, self.type)


class Primer(models.Model):
    name=models.CharField(max_length=255)

    def __unicode__(self):
        return self.name

class Load(models.Model):
    caliber=models.ForeignKey(Caliber)
    primer=models.ForeignKey(Primer)
    powder=models.ForeignKey(Powder)
    bullet=models.ForeignKey(Bullet)
    powder_weight=models.DecimalField(max_digits=3,decimal_places=1)
    
    def __unicode__(self):
        return "%s / %s grain %s" % (self.bullet, self.powder_weight, self.powder)

class Shooter(models.Model):
    name=models.CharField(max_length=255)
    
    def __unicode__(self):
        return self.name


class Result(models.Model):
    weapon=models.ForeignKey(Weapon)
    load=models.ForeignKey(Load)
    date=models.DateField()
    temperature=models.IntegerField(blank=True,null=True)
    shooter=models.ForeignKey(Shooter)
    velocities=models.TextField(max_length=255)
    notes=models.TextField(max_length=2048,blank=True)
        
    def __unicode__(self):
        return '%s : %s' % (self.weapon, self.load)

    def getVelocities(self):
        return [float(x) for x in self.velocities.split()]

    def average(self):
        v = average(self.getVelocities())
        return '%0.0f' % v
        
    def std(self):
        v = std(self.getVelocities())
        return '%0.0f' % v
        
    def max(self):
        v = max(self.getVelocities())
        return '%0.0f' % v
        
    def min(self):
        v = min(self.getVelocities())
        return '%0.0f' % v
        
    def range(self):
        v = max(self.getVelocities()) - min(self.getVelocities())
        return '%0.0f' % v

    def muzzleEnergy(self):
        e = ((average(self.getVelocities())**2) * self.load.bullet.weight)/450240.0
        return '%0.0f' % e
            
    

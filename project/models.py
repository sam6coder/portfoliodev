from django.db import models


class Projects(models.Model):
    name=models.CharField(max_length=100)
    description=models.CharField(max_length=1000)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now=True)
    gitLink=models.CharField(max_length=100)
    
    def __str__(self):
        return f"{self.name}"
    
    class Meta:
        verbose_name_plural = 'Projects'
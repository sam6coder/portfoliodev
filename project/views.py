from django.shortcuts import render
from .serializers import ProjectSerializer
from rest_framework import viewsets
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import AllowAny 
from .models import Projects
# Create your views here.

class ProjectViewSet(viewsets.ModelViewSet):
    queryset=Projects.objects.all().order_by('-created_at')
    serializer_class=ProjectSerializer
    authentication_classes=[TokenAuthentication]
    permission_classes=[AllowAny]
    
    @method_decorator(csrf_exempt)
    def create(self,request,*args,**kwargs):
        return super().create(request,*args,**kwargs)

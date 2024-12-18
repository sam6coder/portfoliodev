from django.shortcuts import render
from rest_framework.response import Response
from .serializers import ProjectSerializer
from rest_framework import viewsets,status
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import AllowAny 
from .models import Projects
from django.http import JsonResponse

# Create your views here.

class ProjectViewSet(viewsets.ModelViewSet):
    queryset=Projects.objects.all().order_by('-created_at')
    serializer_class=ProjectSerializer
    authentication_classes=[TokenAuthentication]
    permission_classes=[AllowAny]
    
    @method_decorator(csrf_exempt)
    def create(self,request,*args,**kwargs):
        return super().create(request,*args,**kwargs)

class ProjectUpdateView(viewsets.ModelViewSet):
    queryset=Projects.objects.all().order_by('-created_at')
    serializer_class=ProjectSerializer
    authentication_classes=[TokenAuthentication]
    permission_classes=[AllowAny]
    
    def create(self,request,*args,**kwargs):
        serializer=ProjectSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data,status=status.HTTP_201_CREATED)
        return Response(serializer.errors,status=status.HTTP_400_BAD_REQUEST)
    
    
    def delete(self,*args,**kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return JsonResponse({'status':'True','Msg':'Project deleted successfully'})

            
    
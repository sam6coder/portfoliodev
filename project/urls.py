from rest_framework import routers
from django.urls import path,include
from .views import *

router=routers.DefaultRouter()
router.register(r'',ProjectViewSet)

urlpatterns = [
    path('',include(router.urls)),
    path('<int:pk>',ProjectUpdateView.as_view({'post':'create'})),
    path('<int:pk>/delete',ProjectUpdateView.as_view({'post':'delete'}))
]

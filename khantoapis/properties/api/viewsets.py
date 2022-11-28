from rest_framework import viewsets
from properties.api import serializers
from properties import models

class PropertiesViewSet(viewsets.ModelViewSet):
    serializers_class = serializers.PropertiesSerializer
    queryset = models.Properties.objects.all()

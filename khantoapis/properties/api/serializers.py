from rest_framework import serializers
from properties import models

class PropertiesSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Properties
        fields = '__all__'

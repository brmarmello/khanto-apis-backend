from django.db import models
from uuid import uuid4


class Properties(models.Model):
    property_id = models.UUIDField(primary_key=True, default=uuid4, editable=False),
    guest_limit = models.IntegerField(blank=False, null=False),
    amount_retroon = models.IntegerField(blank=False, null=False),
    accept_pet = models.BooleanField(default=True),
    cleaning_value = models.DecimalField(max_digits=5, decimal_places=2, blank=False, null=False),
    activation_date = models.DateField(blank=False, null=False),
    creation_date_time = models.DateTimeField(auto_now_add=True, editable=False),
    update_date_time = models.DateTimeField(auto_now=True, editable=False)

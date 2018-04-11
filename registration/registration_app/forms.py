from django import forms
from registration_app import models

class registration_form(forms.ModelForm):
    class Meta():
        model=models.reggistration_model
        fields='__all__'

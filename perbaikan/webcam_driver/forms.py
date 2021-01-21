from django import forms
from django.forms import ModelForm

class DriverForm(forms.Form):
	filename = forms.CharField(max_length=50)
	fps = forms.CharField(max_length=50)

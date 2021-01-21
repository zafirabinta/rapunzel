from django.shortcuts import render
from .forms import DriverForm
from django.shortcuts import redirect
import subprocess

# Create your views here.
def home(request):
	if request.method == 'POST' :
		form = DriverForm(request.POST)
		if form.is_valid():
			filename = form.data['filename']
			fps = form.data['fps']
		#command = '/home/user/run.drive.sh '+ filename + ' ' + fps
		#print(command)
		#subprocess.call(command)
		subprocess.run(["/home/user/run.drive.sh", filename, fps])

	return render(request, 'driver.html')

from django.http import HttpResponse

def home(request):
    return HttpResponse("This project serves as a template for testing DevOps practices using a Django application.")
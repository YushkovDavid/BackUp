from django.shortcuts import render


# Create your views here.
def glavni(request):
   data = {
      "name": "azaazaza",
      "number": 12,
   }
   return render(request, "main/index.html", data)

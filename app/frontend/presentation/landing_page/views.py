"""Landing page views.
"""
from django.views import View
from django.shortcuts import render


class LandingPageView(View):
    template_name = 'landing_page/landing_page.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)

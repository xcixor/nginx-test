from django.urls import path
from frontend.presentation.landing_page import LandingPageView

app_name = 'instaswap'

urlpatterns = [
    path('', LandingPageView.as_view(), name='index'),
]

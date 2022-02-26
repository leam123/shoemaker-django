
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include


urlpatterns = [
    path('admin/', admin.site.urls),
    path('shoemaker/', include('djoser.urls')),
    path('shoemaker/', include('djoser.urls.authtoken')),
    path('shoemaker/', include('product.urls')),
    path('shoemaker/', include('order.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

from blog import views
from django.urls import path
from django.contrib.sitemaps.views import sitemap
from blog.sitemaps import PostSitemap
from blog.feeds import LatestPostFeed


sitemaps = {
    "posts": PostSitemap,
}

urlpatterns = [
    path('', views.PostList.as_view(), name='home'),
    path('<slug:slug>/', views.post_detail, name='post_detail'),
    path("sitemap.xml", sitemap, {"sitemaps": sitemaps}, name="sitemap"),
    path("feed/rss", LatestPostFeed(), name="post_feed"),
]

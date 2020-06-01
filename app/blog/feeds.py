from django.contrib.syndication.views import Feed
from django.template.defaultfilters import truncatewords
from django.utils.feedgenerator import Atom1Feed
from blog.models import Post


class LatestPostFeed(Feed):
    title = "My blog"
    link = ""
    description = "New post of my blog."
    feed_type = Atom1Feed

    def items(self):
        return Post.objects.filter(status=1)

    def item_title(self, item):
        return item.title

    def item_description(self, item):
        return truncatewords(item.content, 30)

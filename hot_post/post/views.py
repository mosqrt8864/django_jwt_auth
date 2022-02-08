from django.shortcuts import render
from post.models import Post
from post.serializers import PostSerializer
from rest_framework import viewsets
# Create your views here.
class PostViewSet(viewsets.ModelViewSet):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
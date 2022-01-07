import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:stacked_architectiure/app/app_router.gr.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(posts.length, (i) => PostCard(post: posts[i]))
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: post.color,
      elevation: 5.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10.0),
        title: Text(post.title, style: Theme.of(context).textTheme.headline3),
        subtitle: Text(post.content),
        onTap: () {
          context.router.push(
            PostDetailsRoute(id: post.id),
          );
        },
      ),
    );
  }
}

class Post {
  const Post({
    required this.id,
    required this.title,
    required this.content,
    required this.color,
  });
  final String id;
  final String title;
  final String content;
  final Color color;
}

final posts = [
  const Post(
      id: '1', title: 'title 1', content: 'content 1', color: Colors.yellow),
  const Post(
      id: '2', title: 'title 2', content: 'content 2', color: Colors.red),
  const Post(
      id: '3',
      title: 'title 3',
      content: 'content 3',
      color: Colors.deepPurpleAccent),
];

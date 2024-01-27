import 'package:flutter/material.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/widgets/posts/post_list.dart';
import 'widgets/posts/post_display.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[200],
      child: FeedDisplay(),
    );
  }
}

class FeedDisplay extends StatelessWidget {
  FeedDisplay({super.key});

  final List<Post> mockPosts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Center(
        child: PostList(
          posts: mockPosts,
          index: 0,
        ),
      ),
    );
  }
}

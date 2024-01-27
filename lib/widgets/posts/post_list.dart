import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/widgets/posts/post_display.dart';

class PostList extends StatelessWidget {
  final List<Post> posts;
  final int index;

  const PostList({super.key, required this.posts, required this.index});

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      initialScrollIndex: index,
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int i) {
        return Padding(
            padding: const EdgeInsets.all(16),
            child: PostDisplay(posts[i], key: UniqueKey()));
      },
    );
  }
}

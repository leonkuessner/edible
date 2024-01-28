import 'package:flutter/material.dart';
import 'package:testing_flutter/fetch_resources/fetch-posts.dart';
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

class FeedDisplay extends StatefulWidget {
  @override
  _FeedDisplayState createState() => _FeedDisplayState();
}

class _FeedDisplayState extends State<FeedDisplay> {
  late List<Post> _fetchedPosts = [];
  var _loaded = false;
  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  void _setPosts(newPosts) {
    _fetchedPosts = newPosts;
  }

  Future<void> _fetchPosts() async {
    var res = await fetch_posts();
    try {
      setState(() {
        _setPosts(res);
      });
      print("all good");
      _fetchedPosts.forEach((p) {
        print(p.review);
      });
      setState(() {
        _loaded = true;
      });
    } catch (e) {
      throw Error();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: _loaded
          ? PostList(posts: _fetchedPosts, index: 0)
          : CircularProgressIndicator(),
    );
  }
}

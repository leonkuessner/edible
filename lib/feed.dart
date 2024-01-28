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

class FeedDisplay extends StatefulWidget{
  @override
  _FeedDisplayState createState() => _FeedDisplayState();

}
class _FeedDisplayState extends State<FeedDisplay> {

  late List<Post> _mockPosts = [];

  @override
  void initState() {
    super.initState();
    _fetchMockPosts();
  }

  void _setMockPosts(newMockPosts) {
    _mockPosts = newMockPosts;
  }


  Future<void> _fetchMockPosts() async{
    var res = await fetch_posts();
    try{
      setState(() {_setMockPosts(res);});
    }
    catch (e) {
      throw Error();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Column(
        children: [
          GestureDetector(onTap: () => {print(_mockPosts)}, child: FlutterLogo(size:50)),
          Center(
            child: PostList(
              posts: _mockPosts,
              index: 0,
            ),
          ),
        ],
      ),
    );
  }
}

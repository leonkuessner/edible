import 'package:flutter/material.dart';
import 'package:testing_flutter/fetch_resources/fetch-posts.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/widgets/navigation/nav_app_bar.dart';
import 'package:testing_flutter/widgets/posts/post_grid_view.dart';
import 'package:testing_flutter/widgets/posts/post_list.dart';
import '../posts/post_display.dart';

class PostGridView extends StatefulWidget {
  final postsX;
  const PostGridView(List<Post> this.postsX, { Key? key}) : super(key: key);

  @override
  State<PostGridView> createState() => _PostGridViewState();
}

class _PostGridViewState extends State<PostGridView> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: widget.postsX.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                          backgroundColor: Colors.orange[50],
                          appBar: NavAppBar(),
                          body: PostList(
                            posts: widget.postsX,
                            index: index,
                          )),
                    ));
              },
              child: Image.network(
                (widget.postsX[index].postImages?.first?.imageUrl) ?? "" ,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

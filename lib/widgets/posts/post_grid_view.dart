import 'package:flutter/material.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/widgets/navigation/nav_app_bar.dart';
import 'package:testing_flutter/widgets/posts/post_grid_view.dart';
import 'package:testing_flutter/widgets/posts/post_list.dart';
import '../posts/post_display.dart';

class PostGridView extends StatelessWidget {
  const PostGridView({Key? key}) : super(key: key);

  static List<Post> mockPosts = [];

  static const List<String> imageUrls = [
    'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudCUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
    'https://media.istockphoto.com/id/1457979959/photo/snack-junk-fast-food-on-table-in-restaurant-soup-sauce-ornament-grill-hamburger-french-fries.webp?b=1&s=170667a&w=0&k=20&c=A_MdmsSdkTspk9Mum_bDVB2ko0RKoyjB7ZXQUnSOHl0=',
    'https://media.istockphoto.com/id/545286388/photo/chinese-food-blank-background.jpg?s=612x612&w=0&k=20&c=pqOIy07YKO5PlU5VxjscwTGRrrZ8PluKMUjSOz-II60=',
    'https://www.tasteofhome.com/wp-content/uploads/2023/08/Top-20-Soul-Food-Restaurants-13-The-Breakfast-Boys.jpg',
    // Add more URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: imageUrls.length,
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
                            posts: mockPosts,
                            index: index,
                          )),
                    ));
              },
              child: Image.network(
                "CHANGE TO FETCHED",
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

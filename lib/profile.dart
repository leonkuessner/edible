import 'package:flutter/material.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/widgets/posts/post_list.dart';
import 'widgets/posts/post_display.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
              bottom: 10,
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://pics.craiyon.com/2023-06-20/89f79a8dee744596981e7417b8a7ea1d.webp'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              'aalaapthefoodie',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xFF55190E),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    '120',
                    style: TextStyle(
                      color: Color(0xFF55190E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'posts',
                    style: TextStyle(
                      color: Color(0xFF55190E),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '200k',
                    style: TextStyle(
                      color: Color(0xFF55190E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'followers',
                    style: TextStyle(
                      color: Color(0xFF55190E),
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '150',
                    style: TextStyle(
                      color: Color(0xFF55190E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'following',
                    style: TextStyle(
                      color: Color(0xFF55190E),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 8),
            child: Text(
              'just a hungry little foodie!',
              style: TextStyle(
                color: Color(0xFF55190E),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[200],
              ),
              child: const Text(
                'follow',
                style: TextStyle(
                  color: Color(0xFF55190E),
                ),
              ),
            ),
          ),
          Expanded(
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
                                appBar: AppBar(
                                  shadowColor: const Color(0xFF55190E),
                                  title: Row(
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/logo-text.png',
                                          width: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const Spacer(),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/logo-nameless.png',
                                          width: 45,
                                          height: 45,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                  backgroundColor: Colors.orange[200],
                                ),
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
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:testing_flutter/widgets/posts/post_list.dart';
import 'package:testing_flutter/widgets/posts/post_grid_view.dart';
import 'package:testing_flutter/widgets/posts/post_display.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:testing_flutter/widgets/profile/profile_dashboard.dart';

class TaggedPostsPage extends StatelessWidget {
  const TaggedPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Implement the UI for displaying the tagged posts
    return const Text('Hello from TaggedPostsPage');
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        body: Column(
          children: [
            // Your static widgets here...
            // For example, a follow button:
            ProfileDashboard(),
            TabBar(
              indicatorColor: const Color(0xFF55190E),
              labelColor: const Color(0xFF55190E),
              tabs: [
                const Tab(
                    icon: Icon(
                      Icons.grid_on,
                      color: Color(0xFF55190E),
                    ),
                    text: 'your posts'),
                Tab(
                    icon: Icon(
                      MdiIcons.mapCheckOutline,
                      color: const Color(0xFF55190E),
                    ),
                    text: 'map view'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const PostGridView(), // Replace with your actual PostGridView
                  MapView(), // Replace with your actual MapView
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Map View'),
      ),
    );
  }
}

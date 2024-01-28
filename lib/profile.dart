import 'package:flutter/material.dart';
import 'package:testing_flutter/fetch_resources/fetch-profile.dart';
import 'package:testing_flutter/main.dart';
import 'package:testing_flutter/models/model.dart';
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

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _loading = true;
  late ProfData _profData;

  @override
  void initState() {
    _fetchProfile();
    super.initState();
  }

  void _setProfData(newProfData) {
    setState(() => _profData = newProfData);
  }

  Future<void> _fetchProfile() async {
    var userId = supabase.auth.currentSession?.user.id;
    var res = await fetchProfile(userId ?? "");
    try {
      _setProfData(res as ProfData);
      print(res);
      setState(() => _loading = false);
    } catch (e) {
      try {
        _setProfData(res as (Profile, (int, int)));
        print(res);
        setState(() => _loading = false);
      } catch (e) {
        rethrow;
      }
    }
  }

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
  
            _loading
                ? Center(child: CircularProgressIndicator())
                :           ProfileDashboard(
              _profData,
              key: UniqueKey(),
            ),
            //     TabBar(
            //         indicatorColor: const Color(0xFF55190E),
            //         labelColor: const Color(0xFF55190E),
            //         tabs: [
            //           const Tab(
            //               icon: Icon(
            //                 Icons.grid_on,
            //                 color: Color(0xFF55190E),
            //               ),
            //               text: 'your posts'),
            //           Tab(
            //               icon: Icon(
            //                 MdiIcons.mapCheckOutline,
            //                 color: const Color(0xFF55190E),
            //               ),
            //               text: 'map view'),
            //         ],
            //       ),
            // //ProfileDashboard(),
            _loading
                ? Center(child: CircularProgressIndicator())
                : TabBar(
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

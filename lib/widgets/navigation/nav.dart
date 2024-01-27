import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:testing_flutter/feed.dart';
import 'package:testing_flutter/profile.dart';
import 'package:testing_flutter/widgets/navigation/nav_app_bar.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<NavPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FeedPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NavAppBar(),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.brown[200]!,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(MdiIcons.home),
                label: 'feed',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[900],
            onTap: _onItemTapped,
            backgroundColor: Colors.orange[200],
          ),
        ));
  }
}

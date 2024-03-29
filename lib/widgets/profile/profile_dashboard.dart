import 'package:flutter/material.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/models/prisma.dart';

class ProfileDashboard extends StatefulWidget {
  var profile;
  var following;
  var followers;
  ProfileDashboard(ProfData profData, {required UniqueKey key}) {
    var (x1, (x2, x3)) = profData;
    profile = x1;
    followers = x2;
    following = x3;
  }

  @override
  _ProfileDashboard createState() => _ProfileDashboard();
}

class _ProfileDashboard extends State<ProfileDashboard> {
  @override
  Widget build(BuildContext context) {
    var (profile, followers, following) =
        (widget.profile as Profile, widget.followers, widget.following);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 30, bottom: 10), // Increase the top padding
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profile.imageUrl ?? ''),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              profile.username!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xFF55190E), // Use the same color for all text
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          profile.posts!.length.toString(),
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
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          followers.toString(),
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
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          following.toString(),
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 8),
            child: Text(
              profile.bio!,
              style: TextStyle(
                color: Color(0xFF55190E), // Use the same color for all text
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 4, left: 110, right: 110, bottom: 16),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.orange[200], // Set background color to orange[200]
                ),
                child: Row(
                    // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        color: Color(0xFF55190E), // Set text color to brown
                      ),
                   // Add space between icon and text
                      Text(
                        'edit profile',
                        style: TextStyle(
                          color: Color(0xFF55190E), // Set text color to brown
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Add space between icon and text
                    ])),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:testing_flutter/main.dart';
import 'package:testing_flutter/widgets/map/map_fudge.dart';
import 'package:testing_flutter/widgets/navigation/nav.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    _setupAuthListener();
    super.initState();
  }

  void _setupAuthListener() {
    supabase.auth.onAuthStateChange.listen((data) {
      final event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const NavPage(),
          ),
        );
      }
    });
  }

  Future<AuthResponse> _googleSignIn() async {
    const webClientId =
        "523582745777-qqaf9rg9vktaq1q8b2gp09n48eg0d80m.apps.googleusercontent.com";
    const iosClientId =
        "523582745777-a5k1oftgo4sd0heudfr0ogvdmc4444u6.apps.googleusercontent.com";

    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: iosClientId,
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser?.authentication;
    final accessToken = googleAuth?.accessToken;
    final idToken = googleAuth?.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    try {
      final response = await supabase.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        accessToken: accessToken,
        idToken: idToken,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 100),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF55190E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: _googleSignIn,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.google,
                          color: Colors.orange[200],
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "continue with google",
                          style: TextStyle(
                              fontSize: 16, color: Colors.orange[200]),
                        ),
                      ]),
                ),
              ),
                Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF55190E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Map"),
                  onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => MyMap()))},
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

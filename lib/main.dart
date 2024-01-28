import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:testing_flutter/login.dart';

Future<void> main() async {
  await dotenv.load();
  await Supabase.initialize(
      url: dotenv.get("SUPABASE_URL"),
      anonKey: dotenv.get("SUPABASE_ANON_KEY"));
  runApp(const MainApp());
}

final supabase = Supabase.instance.client;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "edible.",
        home: LoginScreen());
        // home: NavPage());
  }
}

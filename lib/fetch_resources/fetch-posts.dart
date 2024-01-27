// import 'package:flutter/foundation.dart';

import 'dart:convert';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:http/http.dart';
import 'dart:async';

Future<Response> fetch_posts(){
  return get(Uri.parse('http://localhost:5000/posts'));
}

class ApiTest extends StatefulWidget{
  const ApiTest({super.key});
  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest>{
  late final Future<Response> res;

  @override
  void initState(){
    super.initState();
    res = fetch_posts();
  }   
  
  FutureBuilder<Response> getFb(res) {return FutureBuilder(
    future: res,
    builder: (context,snapshot) {
      if (snapshot.hasData){
        var b = snapshot.data!.body;
        return Text(snapshot.data!.body);
      }
      else if(snapshot.hasError){
        print(snapshot.error);
        return Text('${snapshot.error}');
      }
      return const CircularProgressIndicator();
    });
 }

  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
            shadowColor: Colors.brown[200],
            title: Row(
              children: [
                const Text(
                  "edible.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.brown),
                ),
                const SizedBox(width: 8),
                Icon(
                  MdiIcons.foodDrumstick,
                  size: 30,
                  color: Colors.brown,
                )
              ],
            ),
            backgroundColor: Colors.orange[200],
        ),
      body:Center(child: getFb(fetch_posts())), 
      backgroundColor: Colors.orange[100],
);
  }
}


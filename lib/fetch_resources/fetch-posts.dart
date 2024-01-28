// import 'package:flutter/foundation.dart';

import 'dart:convert';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:http/http.dart';
import 'dart:async';

import 'package:testing_flutter/models/model.dart';

// Future<List<Post>> fetch_posts() async {
//   var res = await get(Uri.parse('http://localhost:8000/posts'));
//   print(res);
//   if (res.statusCode == 200) {
//     try {
//       print(res.body);
//       var jsonList = (json.decode(res.body) as List).cast<Map<String, dynamic>>();
//       print(jsonList);
//       print(jsonList[0]);
//       print(jsonList[0].runtimeType);
//       print(jsonList[0]['meal']);
//       var jsonMapped =
//           (jsonList).map((model) => Post.fromJson(model)).toList();
//       print(jsonMapped);
//       return jsonMapped;
//     } catch (e) {
//       rethrow;
//     }
//   }
//   print("Other status code");
//   throw Error();
// }

Future<List<Post>> fetch_posts() async {
  var res = await get(Uri.parse('http://localhost:8000/posts'));
  if (res.statusCode == 200) {
    try {
      var jsonList =
          (json.decode(res.body) as List).cast<Map<dynamic, dynamic>>();
      var jsonMapped = jsonList.map((model) => Post.fromJson(model)).toList();
      return jsonMapped;
    } catch (e) {
      rethrow;
    }
  }
  throw Error();
}



Future<List<Post>> fetch_individual_posts(String userId) async {
  var res = await get(Uri.parse('http://localhost:8000/individual-restaurant/${userId}'));
  if (res.statusCode == 200) {
    try {
      var jsonList =
          (json.decode(res.body) as List).cast<Map<dynamic, dynamic>>();
      var jsonMapped = jsonList.map((model) => Post.fromJson(model)).toList();
      print(jsonMapped);
      return jsonMapped;
    } catch (e) {
      rethrow;
    }
  }
  throw Error();
}

// import 'package:flutter/foundation.dart';

import 'dart:convert';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:http/http.dart';
import 'dart:async';

import 'package:testing_flutter/models/model.dart';


Class RestoCardData{  
  final double latitude,
  final double longitude,
  final 

}


Future<List<Post>> fetchBusiness() async {
  var res = await get(Uri.parse('http://localhost:8000/details?latitude&longitude&term&price&open_now&attributes'));
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

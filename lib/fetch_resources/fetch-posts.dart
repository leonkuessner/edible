// import 'package:flutter/foundation.dart';

import 'dart:convert';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:http/http.dart';
import 'dart:async';

import 'package:testing_flutter/models/model.dart';

Future<List<Post>> fetch_posts() async {
  var res = await get(Uri.parse('http://localhost:8000/posts'));
  if (res.statusCode == 200){
    try{
    var json = jsonDecode(res.body) as List<Post>;
    return json;
    }
    catch (e){
      throw Error();
    }
  }
  throw Error();
}

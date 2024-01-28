import 'dart:convert';
import 'dart:ffi';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'package:testing_flutter/models/model.dart';





Future<(Profile,(int,int))> fetchProfile(String userID) async {
  var profileRes = await get(Uri.parse('http://localhost:8000/profile/?id=${userID}'));
  print(profileRes);
  if (profileRes.statusCode == 200) {
    try {
      var jsonList = (json.decode(profileRes.body) as List).cast<Map<dynamic, dynamic>>();
      var profile =  Profile.fromJson(jsonList[0]);
      print(profile);
      print(profile?.username);
      var followsRes = await get(Uri.parse('http://localhost:8000/follows/?id=${userID}'));
      if (followsRes.statusCode == 200) {
        try {
          var jsonList = (json.decode(followsRes.body)).cast<Map<String, int>>();
          var followData = (jsonList['following'],jsonList['followed']) as (int,int);
          return (profile,followData);  
        } 
        catch (e) {
            rethrow;
          }}
      else if (followsRes.statusCode == 404){
         return (profile,(0,0));
      }
          
    } catch (e) {
      rethrow;
 
     }}
  throw Error();
}


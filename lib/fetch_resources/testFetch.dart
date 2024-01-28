import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:testing_flutter/fetch_resources/fetch-profile.dart';
import 'dart:async';
import 'package:testing_flutter/models/model.dart';
import 'dart:core';

import 'package:testing_flutter/widgets/navigation/nav_app_bar.dart';


class TestFetch extends StatefulWidget {
  final dynamic fetcher = () => fetchProfile("5442b175-1f99-4d24-9a32-e698f38083d7");
  @override
  _TestFetchState createState() => _TestFetchState();
} 

class _TestFetchState extends State<TestFetch>{
  var _resource = null;


  void _setResource(val){
    setState(() {_resource = val;});
  }
  @override
  void initState(){
    super.initState();
    _resource = widget.fetcher();
    print(_resource);
  }
  Future<void> _fetchRes() async {
    var val = await widget.fetcher();
    try {
      print(val);
      _setResource(val);
      }
    
    catch (e) {
      throw Error();
    }  
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: NavAppBar(),
      body: ElevatedButton(child: Text("Test Fetch"), onPressed: _fetchRes,)
    );
  }
  }

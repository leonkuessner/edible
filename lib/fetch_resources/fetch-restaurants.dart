import 'dart:convert';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:http/http.dart';
import 'dart:async';
import  'dart:math';

import 'package:testing_flutter/widgets/map/restaurant_marker.dart';
Future fetch_businesses(LatLng center, double radius)  {
  var snapshot =   get(Uri.parse('http://localhost:8000/businesses?latitude=${center.latitude}&longitude=${center.longitude}&radius=${min((radius*1000).toInt(),40000)}'))
  .then((r) => jsonDecode(r.body))
  .then((r) => r['businesses'])
  .catchError((r) => []);
  return snapshot;
  }


class MapErrorAlert extends StatelessWidget {
  const MapErrorAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog '),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}




FutureBuilder <dynamic> business_view(center,radius) {return FutureBuilder(
    future: fetch_businesses(center, radius),
    builder: (context,snapshot) {
      if (snapshot.hasData){
        print(snapshot);
        var json = jsonDecode(snapshot.data);
        var businesses = json['businesses'];
        print(businesses.map((biz) => biz.name));
        return MarkerLayer(markers:businesses.map((biz) => maximalBusinessMarker(context, Business(biz.id, biz.coordinates.latitude, biz.coordinates.longitude))).toList());
      }
      else if(snapshot.hasError){
        showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog '),
                content: const Text("Couldn't get restaurants"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  )]));
    }
    return SizedBox.shrink();
    }
);}


  // FutureBuilder<Response> getFb() {return FutureBuilder(
  //   future: res,
  //   builder: (context,snapshot) {
  //     if (snapshot.hasData){
  //       var b = snapshot.data!.body;
  //       return Text(snapshot.data!.body);
  //     }
  //     else if(snapshot.hasError){
  //       print(snapshot.error);
  //       return Text('${snapshot.error}');
  //     }
  //     return const CircularProgressIndicator();
  //   });

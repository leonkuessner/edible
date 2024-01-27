import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';


class BizInfoCard extends StatelessWidget{
  final String id;
  const BizInfoCard(this.id, {super.key});
  @override
  Widget build (BuildContext context){
  return  Scaffold(
    appBar: AppBar(backgroundColor: Colors.orange),
    body:Padding(
        padding: EdgeInsets.all(8.0),
        child: (
          Text("Placeholder!")
        ),
          ),
    );
}}

class Business{
  final String yelpId;
  late LatLng pos;
  Business(this.yelpId,latitude,longitude){
    pos = LatLng(latitude, longitude);
  }
}

displayBizInfo(BuildContext context, String yelpId){
  Navigator.push(context,MaterialPageRoute(builder: (context) =>  BizInfoCard(yelpId)));
}


Marker minimalBusinessMarker(BuildContext context, pos, String yelpId){
  return 
  Marker(point: pos,
         child:GestureDetector(
               child:Icon(Icons.restaurant,
                          size:20,
                          color: Colors.orange,),
               onTap:() => displayBizInfo(context, yelpId)));
}


Marker maximalBusinessMarker(BuildContext context,dynamic bData){
  return minimalBusinessMarker(context, LatLng(bData['coordinates']['latitude'],bData['coordinates']['longitude']), bData['id']);
}

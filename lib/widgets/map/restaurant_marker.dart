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


class PinpointContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.orange[200],
        border:Border.all(color: Color(0xFF55190E), width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/restoicon.png',
          width: 25,height: 25,)
        ],
      ),
    );
  }
}


Marker minimalBusinessMarker(BuildContext context, pos, String yelpId){
  return 
  Marker(point: pos,
         width:  40,
         height: 25,
         child:  GestureDetector(child: PinpointContainer(),
            onTap:() => displayBizInfo(context, yelpId)));
}


Marker maximalBusinessMarker(BuildContext context,dynamic bData){
  return minimalBusinessMarker(context, LatLng(bData['coordinates']['latitude'],bData['coordinates']['longitude']), bData['id']);
}

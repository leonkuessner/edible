import 'dart:convert';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:http/http.dart';
import 'package:testing_flutter/widgets/map/restaurant_marker.dart';

double searchRadius(LatLng bl, LatLng tr) {
  var (t1, n1) = (degToRadian(bl.latitude), degToRadian(bl.longitude));
  var (t2, n2) = (degToRadian(tr.latitude), degToRadian(tr.longitude));
  return (6371 / 2) *
      acos(sin(t1) * sin(t2) + cos(t1) * cos(t2) * cos(n2 - n1));
}

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  MapController mapController = MapController();
  LatLng _centerCoordinates = LatLng(51.509364, -0.128928);
  double _radius = 5.0;
  dynamic _businesses = <dynamic>{};
  bool _isLoading = false;
  void _updateCenterRadius() {
    var bl = mapController.camera.visibleBounds.southWest;
    var tr = mapController.camera.visibleBounds.northEast;
    _radius = searchRadius(bl, tr);
    _centerCoordinates = mapController.camera.center;
  }

  @override
  void initState() {
    fetchBusinesses();
  } 

  void _updateBusinesses(businesses) {
    _businesses = (Set.from(_businesses)).union(Set.from(businesses));
  }

  Future<void> fetchBusinesses() async {
    _updateCenterRadius();
    var snapshot = await get(Uri.parse(
        'http://localhost:8000/businesses?latitude=${_centerCoordinates.latitude}&longitude=${_centerCoordinates.longitude}&radius=${min((_radius * 1000).toInt(), 40000)}'));
    if (snapshot.statusCode == 200) {
      setState(() {
        var businesses = jsonDecode(snapshot.body);
  
        _updateBusinesses(businesses);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }


  

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: _centerCoordinates, // Initial center of the map
          initialZoom: 12.5, // Initial zoom level
          minZoom: 12.5,
          maxZoom: 19,
          onTap: (_, __) async {
            setState(() {
              _isLoading = true;
            });
            await fetchBusinesses();
            setState(() {
              _isLoading = false;
            });
          },
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          _businesses != {}
              ? MarkerClusterLayerWidget(
                  options: MarkerClusterLayerOptions(
                      maxClusterRadius: 35,
                      size: const Size(20, 20),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(50),
                      maxZoom: 15,
                      markers: (_businesses as Set<dynamic>).toList()
                          .map((b) => maximalBusinessMarker(context, b))
                          .toList(),
                      builder: (context, markers) {
                        return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepOrange),
                            child: Center(
                                child: Text(
                              markers.length.toString(),
                              style: const TextStyle(color: Colors.white),
                            )));
                      }))
              : SizedBox.shrink()
        ]);
  }
}




//   @override
//   Widget build(BuildContext context){
//     return FutureBuilder<dynamic>(future: fetch_businesses(_centerCoordinates,_radius), builder:(context, snapshot){
//       var markers = <Marker>[];
//       if (snapshot.hasData){
//         markers = snapshot.data.map((b) => maximalBusinessMarker(context, Business(b.id,b.coordinates.latitude,b.coordinates.longitude)));
//       }
//       return FlutterMap(
//       mapController: mapController,
//       options: MapOptions(
//         initialCenter: _centerCoordinates, // Initial center of the map
//         initialZoom: 10.0, // Initial zoom level
//         onTap: (_,__) {
//           _updateCenterRadius();
//         },
//       ),children:
//       [
//         TileLayer(
//           urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
//         ),
//         MarkerLayer(
//           markers: [
//             Marker(
//               width: 40.0,
//               height: 40.0,
//               point: _centerCoordinates, // Initial position of the marker
//               child: IconButton(
//                 icon: Icon(Icons.location_on),
//                 onPressed: () {},
//               ),
//             ),
//           ]),
//           MarkerLayer(markers:markers)]);
//     }
//     );
//   }
// }


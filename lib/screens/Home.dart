
import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget
{
   @override
   _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
  GoogleMapController mapController;
  final LatLng _center = const LatLng(33.589241, -7.605339);
void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
        title: Text('Hotel'),
     ),
     body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 10.0,
          ),),);
  }
}
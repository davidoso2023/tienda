import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


const MAPBOX_ACCESS_TOKEN= "pk.eyJ1Ijoic2ViYXN0aWFuc2l0b2p1anUiLCJhIjoiY2x1eWJwcWQyMGxpbDJqbHI2ajg4cDI0bCJ9.SN0EW0S3p2fSy8dYYNhKKg";

final myPosition = LatLng(40.6974888, -73.979681);

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: FlutterMap(options: MapOptions(
          center: myPosition ,
          minZoom: 5,
          maxZoom: 25,
          zoom: 18


      ), nonRotatedChildren: [

           TileLayer( 
            urlTemplate: "https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}",
            additionalOptions: const { 
                "accessToken": MAPBOX_ACCESS_TOKEN,
              "id": 'mapbox/streets-v12'
},



           ),
        MarkerLayer(

          markers: [Marker(point: myPosition, builder: (context) {
            return Container(
                 child: const Icon(Icons.person_pin,color: Colors.amber, size: 40,),




            );
          },)],

        )



      ],)

   





    );
  }
}

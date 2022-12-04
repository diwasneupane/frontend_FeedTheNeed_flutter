// import 'package:eshopping/screen/Profile.dart';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};
  LatLng myLocation = const LatLng(27.7062257, 85.3298821);
  LatLng myLocation1 = const LatLng(27.70622, 85.33064);
  @override
  void initState() {
    markers.add(
      Marker(
        markerId: MarkerId(myLocation.toString()),
        position: myLocation,
        infoWindow: const InfoWindow(
          title: 'FeedTheNeed',
          snippet: 'Serving the Need',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(Marker(
      markerId: MarkerId(myLocation1.toString()),
      position: myLocation1,
      infoWindow: const InfoWindow(
        title: 'Gadget_Guru',
        snippet: 'Electronic Store',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meet us here",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [],
      ),
      body: Stack(
        children: [
          GoogleMap(
            zoomGesturesEnabled: true,
            initialCameraPosition: CameraPosition(
              target: myLocation,
              zoom: 16,
            ),
            markers: markers,
            mapType: MapType.normal,
            onMapCreated: (controller) {
              setState(() {
                mapController = controller;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              // add your floating action button
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.map),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

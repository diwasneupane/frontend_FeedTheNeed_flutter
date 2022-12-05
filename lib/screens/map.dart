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
  LatLng myLocation = const LatLng(27.6980, 85.3239);
  // LatLng myLocation1 = const LatLng(27.70622, 85.33064);
  @override
  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Meet us here",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
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
            mapType: _currentMapType,
            zoomGesturesEnabled: true,
            initialCameraPosition: CameraPosition(
              target: myLocation,
              zoom: 17,
            ),
            markers: markers,
            // mapType: MapType.normal,
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
                backgroundColor: const Color(0xFF41A2CD),
                onPressed: _onMapTypeButtonPressed,
                child: const Icon(Icons.map),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

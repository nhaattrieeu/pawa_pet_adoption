import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatelessWidget {
  const MapSample({super.key});

  @override
  Widget build(BuildContext context) {
    double paddingBottom = MediaQuery.of(context).padding.bottom;

    late GoogleMapController googleMapController;
    List<Marker> markers = [
      const Marker(
        markerId: MarkerId("1"),
        position: LatLng(10.892986, 106.766864),
      ),
      const Marker(
        markerId: MarkerId("2"),
        position: LatLng(10.894986, 106.765864),
      ),
      const Marker(
        markerId: MarkerId("3"),
        position: LatLng(10.887986, 106.769864),
      ),
    ];

    const CameraPosition initialPosition = CameraPosition(
      target: LatLng(0, 0),
      zoom: 20,
    );

    Future<void> goToCurrentPosition() async {
      Position currentPosition = await Geolocator.getCurrentPosition();
      CameraPosition currentCameraPosition = CameraPosition(
        target: LatLng(currentPosition.latitude, currentPosition.longitude),
        zoom: 17,
      );
      await googleMapController
          .animateCamera(CameraUpdate.newCameraPosition(currentCameraPosition));
    }

    return CupertinoPageScaffold(
      child: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        initialCameraPosition: initialPosition,
        onMapCreated: (controller) {
          googleMapController = controller;
          goToCurrentPosition();
        },
        compassEnabled: false,
        zoomControlsEnabled: false,
        padding: EdgeInsets.only(bottom: paddingBottom),
        markers: markers.toSet(),
      ),
    );
  }
}

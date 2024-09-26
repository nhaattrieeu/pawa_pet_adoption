import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/constants/colors.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  late GoogleMapController googleMapController;
  List<Marker> markers = [];

  ///
  Future<void> createCustomMarker(String id, LatLng latLng) async {
    Uint8List markerIcon = await _getMarkerIconFromUrl(
      'https://lh3.googleusercontent.com/a/ACg8ocL0lfmnlIWcGym353YSy9cvJuIMiMaSZdaInjmwMgToCFzt8aI=s576-c-no',
      120,
    );

    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId(id),
          position: latLng,
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
      );
    });
  }

  Future<Uint8List> _getMarkerIconFromUrl(String url, double size) async {
    final Completer<ui.Image> completer = Completer();
    final ImageStream imageStream =
        CachedNetworkImageProvider(url).resolve(const ImageConfiguration());

    imageStream.addListener(
      ImageStreamListener((ImageInfo imageInfo, bool synchronousCall) {
        completer.complete(imageInfo.image);
      }),
    );

    final ui.Image image = await completer.future;
    final ByteData? byteData = await _resizeAndProcessImage(image, size);

    return byteData!.buffer.asUint8List();
  }

  Future<ByteData?> _resizeAndProcessImage(ui.Image image, double size) async {
    final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);

    final double radius = size / 2;

    canvas.clipRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size, size),
        Radius.circular(radius),
      ),
    );

    paintImage(
      canvas: canvas,
      image: image,
      rect: Rect.fromLTWH(0, 0, size, size),
      fit: BoxFit.contain,
    );

    final Paint borderPaint = Paint()
      ..color = AppColors.primaryColor // Màu viền
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size, size),
        Radius.circular(radius),
      ),
      borderPaint,
    );

    final ui.Image finalImage = await pictureRecorder.endRecording().toImage(
          size.toInt(),
          size.toInt(),
        );

    return finalImage.toByteData(format: ui.ImageByteFormat.png);
  }

  ///

  CameraPosition initialPosition = const CameraPosition(
    target: LatLng(16.765595, 105.929867),
    zoom: 6,
  );

  Future<void> goToCurrentPosition() async {
    Position currentPosition = await Geolocator.getCurrentPosition();
    CameraPosition currentCameraPosition = CameraPosition(
      target: LatLng(currentPosition.latitude, currentPosition.longitude),
      zoom: 18,
    );
    await googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(currentCameraPosition));
  }

  @override
  void initState() {
    createCustomMarker("1", const LatLng(10.893053, 106.766618));
    createCustomMarker("2", const LatLng(10.897053, 106.763618));
    createCustomMarker("3", const LatLng(10.893853, 106.766118));
    createCustomMarker("4", const LatLng(10.894053, 106.761618));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.of(context).padding.bottom;

    return CupertinoPageScaffold(
      child: GoogleMap(
        padding: EdgeInsets.only(bottom: paddingBottom),
        mapType: MapType.normal,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        compassEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: initialPosition,
        markers: markers.toSet(),
        onMapCreated: (controller) {
          googleMapController = controller;
          goToCurrentPosition();
        },
      ),
    );
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }
}

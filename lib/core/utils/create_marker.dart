import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../constants/colors.dart';

class CreateMarker {
  Future<Uint8List> createCustomMarker() async {
    Uint8List markerIcon = await _getMarkerIconFromUrl(
      'https://lh3.googleusercontent.com/a/ACg8ocL0lfmnlIWcGym353YSy9cvJuIMiMaSZdaInjmwMgToCFzt8aI=s576-c-no',
      // Thay bằng URL ảnh của bạn
      Size(120, 120), // Kích thước của marker
    );
    return markerIcon;

    // setState(() {
    //   markers.add(
    //     Marker(
    //       markerId: MarkerId('custom_marker'),
    //       position: LatLng(10.893366, 106.7678631),
    //       icon: BitmapDescriptor.fromBytes(markerIcon),
    //     ),
    //   );
    // });
  }

  Future<Uint8List> _getMarkerIconFromUrl(String url, Size size) async {
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

  Future<ByteData?> _resizeAndProcessImage(ui.Image image, Size size) async {
    final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);

    final double radius = size.width / 2;

    // Bo tròn và viền

    canvas.clipRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(radius),
      ),
    );

    // Vẽ ảnh lên canvas
    paintImage(
      canvas: canvas,
      image: image,
      rect: Rect.fromLTWH(0, 0, size.width, size.height),
      fit: BoxFit.contain,
    );

    // Vẽ viền bên ngoài
    final Paint borderPaint = Paint()
      ..color = AppColors.primaryColor // Màu viền
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    // Vẽ vòng bên ngoài
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(radius),
      ),
      borderPaint,
    );

    final ui.Image finalImage = await pictureRecorder.endRecording().toImage(
          size.width.toInt(),
          size.height.toInt(),
        );

    return finalImage.toByteData(format: ui.ImageByteFormat.png);
  }
}

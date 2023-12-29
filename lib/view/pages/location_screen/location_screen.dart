import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController? mapController;

  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    _handleUserRequest(LatLng(10.527640, 76.214432), "User 1: Pick me up!");
    _handleUserRequest(LatLng(10.528642, 76.215432), "User 2: Need a ride!");
    _handleUserRequest(LatLng(10.527643, 76.214432), "User 3: Pick me up!");
    _handleUserRequest(LatLng(10.528641, 76.215432), "User 4: Need a ride!");
    _handleUserRequest(LatLng(10.528644, 76.215432), "User 5: Need a ride!");
  }

  Future<void> _addMarker(
      String imagePath, LatLng position, String requestMessage) async {
    final ByteData byteData = await rootBundle.load(imagePath);
    final ui.Codec codec = await ui.instantiateImageCodec(
      byteData.buffer.asUint8List(),
      targetWidth: 100,
      targetHeight: 100,
    );
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    final ByteData? resizedByteData = await frameInfo.image.toByteData(
      format: ui.ImageByteFormat.png,
    );

    final Uint8List resizedByteList = resizedByteData!.buffer.asUint8List();

    final BitmapDescriptor bitmapDescriptor =
        BitmapDescriptor.fromBytes(resizedByteList);

    final Marker marker = Marker(
      markerId: MarkerId(position.toString()),
      position: position,
      icon: bitmapDescriptor,
      infoWindow: InfoWindow(title: "Request", snippet: requestMessage),
    );

    setState(() {
      markers.add(marker);
    });
  }

  void setMapStyle() async {
    String style = await DefaultAssetBundle.of(context)
        .loadString('assets/json/map_styles.json');
    mapController!.setMapStyle(style);
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setMapStyle();
  }

  void _handleUserRequest(LatLng userLocation, String requestMessage) {
    _addMarker('assets/Map-Marker.png', userLocation, requestMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.8,
                fit: BoxFit.cover,
                image: AssetImage("assets/png/Scroll Group 6@2x.png"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Near By ",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Location ",
                          style: TextStyle(
                            color: customGreen,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: markers,
                initialCameraPosition: _kGooglePlex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Updated CameraPosition
CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(10.528142, 76.214932),
  zoom: 16.0,
);

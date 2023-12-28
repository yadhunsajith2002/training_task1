import 'package:flutter/material.dart';

import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MakeJourney extends StatefulWidget {
  const MakeJourney({Key? key}) : super(key: key);

  @override
  State<MakeJourney> createState() => _MakeJourneyState();
}

class _MakeJourneyState extends State<MakeJourney> {
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
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.8,
                fit: BoxFit.cover,
                image: AssetImage("assets/png/Scroll Group 10@2x.png"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Start My  ",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "Journey ",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Leaving from",
                              prefixIcon: Icon(Icons.my_location_rounded,
                                  color: Colors.green),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Leaving from",
                              prefixIcon: Icon(Icons.my_location_rounded,
                                  color: Colors.green),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.date_range,
                              color: Colors.green,
                            ),
                            Text(
                              "12- jUl - 2023",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Search",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
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

CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(10.528142, 76.214932),
  zoom: 16.0,
);

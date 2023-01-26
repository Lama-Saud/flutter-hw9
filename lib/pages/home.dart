import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 20,
        ),
        title: const Center(
          child: Text(
            "Live tracking",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white),
              child: Image.asset(
                'lib/assets/map.png',
                fit: BoxFit.cover,
              ),
              // child: const GoogleMap(
              //   myLocationButtonEnabled: false,
              //   zoomControlsEnabled: false,
              //   initialCameraPosition: CameraPosition(target: sourceLocation, zoom: 11.5),
              // ),
            ),
            /////////////////////////////////////////////////////////////////////
            const Text(
              "Package Information",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 10),

            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 245, 223, 191),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Delivery type:",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                        Text(
                          "Express delivery",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Package weight:",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                        Text(
                          "12.4 kg",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////

            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 208, 228, 225),
              ),
              // child: const Padding(
              //   padding: EdgeInsets.all(9.0),
              child: const ListTile(
                leading: Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                ),
                title: Text(
                  "Jonathan Doe",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Experienced Courier",
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                ),
                trailing: Icon(
                  Icons.call,
                  color: Color.fromARGB(255, 28, 147, 145),
                ),
              ),
            ),
            //),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:training_task1/view/pages/request_accept_screen/request_accept_screen.dart';

class TravelRequestScreen extends StatelessWidget {
  const TravelRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> requestData = [
      {
        "avatar":
            "https://media.istockphoto.com/id/1317804578/photo/one-businesswoman-headshot-smiling-at-the-camera.jpg?s=612x612&w=0&k=20&c=EqR2Lffp4tkIYzpqYh8aYIPRr-gmZliRHRxcQC5yylY=",
        "name": "Sreya Pattel",
      },
      {
        "avatar":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAjD5KTG4_HLRVXa8BY_Ipy-uQb7fBWOuAt5V-9TL8GHNM85twJ2x6B6Aq4GoVj6Y8Tkw&usqp=CAU",
        "name": "Aswathy Ram",
      },
      {
        "avatar":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsPywx2EjOxzXyK16iWGUMGX7tEw03R1P-Vo6dXb3gJm1Zt_K75BKP0-NcHuQP9pQNIVk&usqp=CAU",
        "name": "Stella Jhony",
      },
      {
        "avatar":
            "https://media.licdn.com/dms/image/D4E03AQGG_dUBY2odfw/profile-displayphoto-shrink_400_400/0/1671052328516?e=2147483647&v=beta&t=2BWpAto_1t_qM2RL2jkL5kbHcYc2v91gnenAJImHLrA",
        "name": "Annabella Jacob",
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel Request",
          style: TextStyle(
              // color: Colors.green,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            requestData[index]['avatar'].toString()),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        requestData[index]['name'].toString(),
                        style: TextStyle(
                            // color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return RequestAcceptScreen();
                                },
                              ));
                            },
                            child: Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "Accept",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                "Ignore",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}

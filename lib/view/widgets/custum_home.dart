import 'package:flutter/material.dart';

class CustumHomeCard extends StatelessWidget {
  const CustumHomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-photo/sports-car-driving-asphalt-road-night-generative-ai_188544-8052.jpg"),
            ),
            title: Text("Catherin xavier",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Car : ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "BMW X8  ",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "BG 64587 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            trailing: Text("11 aug - 2023"),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 120,
              width: 300,
              child: Card(
                elevation: 0,
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_searching_rounded,
                            color: Colors.green,
                          ),
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.place,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Kochi,Bypass",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.horizontal(
                                      start: Radius.circular(10),
                                      end: Radius.circular(10),
                                    ),
                                    color: Colors.green),
                                child: Center(
                                    child: Text(
                                  "Start",
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Kochi,Bypass",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.horizontal(
                                      start: Radius.circular(10),
                                      end: Radius.circular(10),
                                    ),
                                    color: Colors.black),
                                child: Center(
                                    child: Text(
                                  "End",
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

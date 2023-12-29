import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/pages/travel_request_screen/travel_request_screen.dart';
import 'package:training_task1/view/widgets/buttons/request_button.dart';
import 'package:training_task1/view/widgets/custum_home.dart';

class RequestAcceptScreen extends StatelessWidget {
  const RequestAcceptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.2,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                          )),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
                  ),
                  Text(
                    "Aravind Swami",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Car : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "BMW X8  ",
                            style: TextStyle(
                                color: customGreen,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "BG 64587 ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Rating ⭐ 3.5",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: "Enter",
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                  color: customGreen, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 0.5,
              color: Colors.green.shade50,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/sports-car-driving-asphalt-road-night-generative-ai_188544-8052.jpg"),
                    ),
                    title:
                        Text("Catherin xavier", style: TextStyle(fontSize: 16)),
                    subtitle: Divider(
                      color: Colors.grey.shade400,
                      thickness: 0.5,
                    ),
                    trailing: Icon(Icons.close),
                  ),
                  SizedBox(
                    height: 70,
                    width: 300,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_searching_rounded,
                                color: customGreen,
                                size: 20,
                              ),
                              Container(
                                height: 20,
                                width: 2,
                                color: customGreen,
                              ),
                              Icon(
                                Icons.place,
                                color: customGreen,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kochi,Bypass",
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Kochi,Bypass",
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CustumRequestButton(
                                  height: 25,
                                  width: 60,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

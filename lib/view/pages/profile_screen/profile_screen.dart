import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List<String> icons = [
    "assets/png/Group 9277@2x.png",
    "assets/png/Group 9278@2x.png",
    "assets/png/Group 9279@2x.png",
    "assets/png/Group 9280@2x.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: MediaQuery.of(context).size.height * 0.3,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/png/Scroll Group 5@2x.png"))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios_new)),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
                    ),
                    Text(
                      "Aravind Swami",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rating  3.5",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: icons.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(icons[index]),
                ),
                title: Text(
                  "Car details",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            );
          },
        ),
      ),
    );
  }
}

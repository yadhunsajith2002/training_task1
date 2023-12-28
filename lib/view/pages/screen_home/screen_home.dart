import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_task1/controller/home_controller/home_controller.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    var provider = context.read<HomeController>();
    var providerWatch = context.watch<HomeController>();

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: providerWatch.screens[provider.currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Colors.green.shade700,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                provider.onTap(0);
              },
              child: Icon(
                Icons.emoji_events,
                color: Colors.white,
                size: 30,
              ),
            ),
            InkWell(
              onTap: () {
                provider.onTap(1);
              },
              child: Icon(
                Icons.toys,
                color: Colors.white,
                size: 30,
              ),
            ),
            InkWell(
              onTap: () {
                provider.onTap(2);
              },
              child: CircleAvatar(
                child: Icon(
                  Icons.home,
                  color: Colors.green,
                  size: 30,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                provider.onTap(3);
              },
              child: Icon(
                Icons.system_update_tv_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            InkWell(
              onTap: () {
                provider.onTap(4);
              },
              child: Icon(
                Icons.place,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

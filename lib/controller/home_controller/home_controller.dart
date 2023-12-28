import 'package:flutter/material.dart';
import 'package:training_task1/view/pages/home_screen/home_screen.dart';
import 'package:training_task1/view/pages/location_screen/location_screen.dart';
import 'package:training_task1/view/pages/make_journey_screen/make_journey_screen.dart';
import 'package:training_task1/view/pages/profile_screen/profile_screen.dart';
import 'package:training_task1/view/pages/reward_screen/reward_screen.dart';
import 'package:training_task1/view/pages/travel_request_screen/travel_request_screen.dart';

class HomeController extends ChangeNotifier {
  int currentIndex = 0;

  List<Widget> screens = [
    RewardScreen(),
    MakeJourney(),
    HomeScreen(),
    TravelRequestScreen(),
    LocationScreen(),
  ];

  void onTap(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

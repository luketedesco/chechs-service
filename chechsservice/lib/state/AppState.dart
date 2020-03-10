// Import: Flutter
import 'package:flutter/material.dart';

// ======================================
// CLASS: AppState
// ======================================

class AppState with ChangeNotifier {
  // for (var hoursHistory in "NHS Hours") {
    
  // }
  bool nhsHoursCheck = false;

  // Define all the global variables
  String name = '';
  String username = '';
  String password = '';
  Map hoursHistory = {};
  Map opportunities = {};

  // Class Constructor
  AppState() {
    setDefault();
  }

  // ======================================
  // METHOD: setDefault
  // ======================================

  void setDefault() {
    name = 'Luke Tedesco';
    username = 'username';
    password = 'password';

    // Add some sample hours history
    hoursHistory[0] = {};
    hoursHistory[0]['Start'] = DateTime(2020, 1, 1, 13, 0);
    hoursHistory[0]['End'] = DateTime(2020, 1, 1, 19, 30);
    hoursHistory[0]['Name'] = 'My first hours history input';
    hoursHistory[0]['Organization'] = 'My first organization';
    hoursHistory[0]["Type"] = "School Help";
    hoursHistory[0]['NHS Hours'] = false;
    hoursHistory[1] = {};
    hoursHistory[1]['Start'] = DateTime(2020, 2, 1, 1, 0);
    hoursHistory[1]['End'] = DateTime(2020, 2, 1, 3, 0);
    hoursHistory[1]['Name'] = 'My second hours history input';
    hoursHistory[1]['Organization'] = 'My second organization';
    hoursHistory[1]["Type"] = "Community Service";
    hoursHistory[1]['NHS Hours'] = true;
    hoursHistory[2] = {};
    hoursHistory[2]['Start'] = DateTime(2020, 2, 1, 1, 0);
    hoursHistory[2]['End'] = DateTime(2020, 2, 1, 2, 30);
    hoursHistory[2]['Name'] = 'My third hours history input';
    hoursHistory[2]['Organization'] = 'My third organization';
    hoursHistory[2]["Type"] = "Food Bank";
    hoursHistory[2]['NHS Hours'] = false;
    // hoursHistory[3] = hoursHistory[2];
    // hoursHistory[4] = hoursHistory[2];
    // hoursHistory[5] = hoursHistory[2];
    // hoursHistory[6] = hoursHistory[2];
    // hoursHistory[7] = hoursHistory[2];
    // hoursHistory[8] = hoursHistory[2];
    // hoursHistory[9] = hoursHistory[2];
    // hoursHistory[10] = hoursHistory[2];

    // Add some sample opportunities
    opportunities[0] = {};
    opportunities[0]['start'] = DateTime(2020, 1, 1, 13, 0);
    opportunities[0]['end'] = DateTime(2020, 1, 1, 19, 0);
    opportunities[0]['location'] = 'Oppotunity 1 location';
    opportunities[0]['organization'] = 'Oppotunity 1 organization';
    opportunities[0]['contactPhone'] = 'xxx-xxx-xxxx';
    opportunities[0]['contactEmail'] = 'oppotunity1@gmail.com';
    opportunities[1] = {};
    opportunities[1]['start'] = DateTime(2020, 3, 1, 1, 0);
    opportunities[1]['end'] = DateTime(2020, 3, 1, 4, 0);
    opportunities[1]['location'] = 'Oppotunity 2 location';
    opportunities[1]['organization'] = 'Oppotunity 2 organization';
    opportunities[1]['contactPhone'] = 'xxx-xxx-xxxx';
    opportunities[1]['contactEmail'] = 'oppotunity2@gmail.com';
    opportunities[2] = {};
    opportunities[2]['start'] = DateTime(2020, 3, 1, 1, 0);
    opportunities[2]['end'] = DateTime(2020, 3, 1, 4, 0);
    opportunities[2]['location'] = 'Oppotunity 3 location';
    opportunities[2]['organization'] = 'Oppotunity 3 organization';
    opportunities[2]['contactPhone'] = 'xxx-xxx-xxxx';
    opportunities[2]['contactEmail'] = 'oppotunity2@gmail.com';

    // opportunities[3] = opportunities[2];
    // opportunities[4] = opportunities[2];
    // opportunities[5] = opportunities[2];
    // opportunities[6] = opportunities[2];
    // opportunities[7] = opportunities[2];
    // opportunities[8] = opportunities[2];
    // opportunities[9] = opportunities[2];
    // opportunities[10] = opportunities[2];
  }
}

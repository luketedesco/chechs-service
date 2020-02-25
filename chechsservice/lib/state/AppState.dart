// Import: Flutter
import 'package:flutter/material.dart';

// ======================================
// CLASS: AppState
// ======================================

class AppState with ChangeNotifier {
  bool nhsHoursCheck = true;

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
    hoursHistory[0]['start'] = DateTime(2020, 1, 1, 13, 0);
    hoursHistory[0]['end'] = DateTime(2020, 1, 1, 19, 30);
    hoursHistory[0]['name'] = 'My first hours history input';
    hoursHistory[0]['organization'] = 'My first organization';
    hoursHistory[0]['nhs'] = false;
    hoursHistory[1] = {};
    hoursHistory[1]['start'] = DateTime(2020, 2, 1, 1, 0);
    hoursHistory[1]['end'] = DateTime(2020, 2, 1, 2, 30);
    hoursHistory[1]['name'] = 'My second hours history input';
    hoursHistory[1]['organization'] = 'My second organization';
    hoursHistory[1]['nhs'] = true;

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

    opportunities[3] = opportunities[2];
    opportunities[4] = opportunities[2];
    opportunities[5] = opportunities[2];
    opportunities[6] = opportunities[2];
    opportunities[7] = opportunities[2];
    opportunities[8] = opportunities[2];
    opportunities[9] = opportunities[2];


  }
}

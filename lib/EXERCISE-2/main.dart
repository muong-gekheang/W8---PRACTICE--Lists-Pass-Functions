import 'package:flutter/material.dart';

import 'ui/screens/profile.dart';

import 'package:w7_lab/EXERCISE-2/data/profile_data.dart';

 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profileData: ronanProfile),
  ));
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//imports from local files
import 'package:perfect_business_services/pages/home.dart';


void main() {
//     ===============System Chrome prevent device rotation===============
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
    );
  });
}
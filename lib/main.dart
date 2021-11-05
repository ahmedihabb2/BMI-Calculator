import 'package:flutter/material.dart';

import 'constants.dart';
import 'pages/bmi_calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: BMICalculator(),
    );
  }
}

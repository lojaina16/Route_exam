import 'package:flutter/material.dart';
import 'package:route_exam/screen_one.dart';
import 'package:route_exam/screen_three.dart';
import 'package:route_exam/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Screen1.routeName,
      routes: {
        Screen1.routeName: (context) => Screen1(),
        Screen2.routeName: (context) => Screen2(),
        Screen3.routeName: (context) => Screen3(),
      },
    );
  }
}

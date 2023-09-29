import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  Color color;
  String image;
  String txt;

  Exercise({required this.color, required this.image, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              txt,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

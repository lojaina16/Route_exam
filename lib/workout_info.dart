import 'package:flutter/material.dart';

class WorkOutInfo extends StatelessWidget {
  IconData icon;
  String txt;
  String txt2;

  WorkOutInfo({required this.icon, required this.txt, required this.txt2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon),
            Text(txt),
          ],
        ),
        Text(
          txt2,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

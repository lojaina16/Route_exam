import 'package:flutter/material.dart';

class WorkoutProgram extends StatelessWidget {
  String noDays;
  String txt1;
  String txt2;
  String image;

  WorkoutProgram(
      {required this.noDays,
      required this.txt1,
      required this.txt2,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xffcccccc), borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            padding: EdgeInsets.all(6),
            child: Text(noDays,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(txt1,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(txt2),
                ],
              ),
              Image.asset(
                image,
                width: 120,
                height: 120,
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.access_time_outlined),
              Text(" 30 mins"),
            ],
          )
        ],
      ),
    );
  }
}

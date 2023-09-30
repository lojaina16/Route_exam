import 'package:flutter/material.dart';
import 'package:route_exam/exercise_containers.dart';

class Screen1 extends StatefulWidget {
  static const String routeName = "Screen1";

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/Group.png"),
        title: Text(
          "Moody",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          Badge(
            child: Icon(
              Icons.notifications_outlined,
              size: 40,
              color: Colors.black,
            ),
            smallSize: 13,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(" How are you feeling today ?"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/Frame.png"),
                      Text("Love")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/Frame 8.png"),
                      Text("Cool")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/Frame 10.png"),
                      Text("Happy")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/Frame 12.png"),
                      Text("Sad")
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Feature",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.green,
                        size: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffecfdf3),
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Positive Vibes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Boost your mood with "),
                            Text("positive vibes")
                          ],
                        ),
                        Image.asset("assets/images/Walking the Dog.png")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_fill,
                          size: 36,
                          color: Colors.green,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "10 mins",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Exercise",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.green,
                        size: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Exercise(
                        color: Color(0xfff9f5ff),
                        image: "assets/images/Relax.png",
                        txt: "Relaxation")),
                Expanded(
                    child: Exercise(
                        color: Color(0xfffdf2fa),
                        image: "assets/images/med.png",
                        txt: "Meditation")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Exercise(
                        color: Color(0xfffffaf5),
                        image: "assets/images/breath.png",
                        txt: "Breathing")),
                Expanded(
                    child: Exercise(
                        color: Color(0xfff0f9ff),
                        image: "assets/images/yoga.png",
                        txt: "Yoga")),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedIconTheme: IconThemeData(color: Color(0xff363f72)),
        unselectedIconTheme: IconThemeData(color: Color(0xff747d90)),
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.window_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

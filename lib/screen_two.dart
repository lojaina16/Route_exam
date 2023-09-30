import 'package:flutter/material.dart';
import 'package:route_exam/workout_info.dart';
import 'package:route_exam/workout_program.dart';

class Screen2 extends StatefulWidget {
  static const String routeName = "Screen2";

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: ListTile(
              leading: Image.asset("assets/images/Ellipse 10.png"),
              title: Text("Hello, Jade"),
              subtitle: Text(
                "Ready to workout?",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              trailing: Badge(
                child: Icon(
                  Icons.notifications_outlined,
                  size: 40,
                  color: Colors.black,
                ),
                smallSize: 13,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xffcccccc),
                    borderRadius: BorderRadius.circular(15)),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WorkOutInfo(
                          icon: Icons.favorite_border_outlined,
                          txt: "Heart Rate",
                          txt2: "  81 BPM"),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      WorkOutInfo(
                          icon: Icons.toc_outlined,
                          txt: "To-do",
                          txt2: "  32,5 %"),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      WorkOutInfo(
                          icon: Icons.local_fire_department_outlined,
                          txt: "Calo",
                          txt2: "1000 Cal"),
                    ],
                  ),
                ),
              ),
              Text(" Workout Programs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              TabBar(
                tabs: [
                  Tab(
                      child: Text(
                    "All Type",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )),
                  Tab(
                      child: Text(
                    "Full Body",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  )),
                  Tab(
                      child: Text(
                    "Upper",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )),
                  Tab(
                      child: Text(
                    "Lower",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )),
                ],
              ),
              WorkoutProgram(
                  noDays: "7 days",
                  txt1: "Morning Yoga",
                  txt2: "Improve mental focus.",
                  image: "assets/images/exe1.png"),
              WorkoutProgram(
                  noDays: "3 days",
                  txt1: "Plank Exercise",
                  txt2: "Improve posture and stability.",
                  image: "assets/images/exe2.png"),
              WorkoutProgram(
                  noDays: "7 days",
                  txt1: "Morning Yoga",
                  txt2: "Improve mental focus.",
                  image: "assets/images/exe1.png"),
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
              icon: Icon(Icons.send),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
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

import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  static const String routeName = "Screen3";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Image.asset("assets/images/logo.png"),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Articles, Video, Audio and More,...",
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              TabBar(
                tabs: [
                  Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Tab(
                          child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Discover",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10)),
                      ))),
                  Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Tab(
                          child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("News",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                      ))),
                  Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Tab(
                          child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(" Most Viewed",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 9)),
                      ))),
                  Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Tab(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Saved",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                      ))),
                ],
              ),
            ],
          )),
    );
  }
}

// ignore_for_file: sized_box_for_whitespace

import 'package:fitness_app/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List data = [
    Data(
      imageUrl: "assets/2.png",
      heading: "Meditation",
      time: "60 Hours",
      exercises: "45 exercises",
    ),
    Data(
      imageUrl: "assets/3.png",
      heading: "Cardio",
      time: "45 Hours",
      exercises: "20 exercises",
    ),
    Data(
      imageUrl: "assets/4.png",
      heading: "Pilates",
      time: "60 Hours",
      exercises: "45 exercises",
    ),
    Data(
      imageUrl: "assets/1.png",
      heading: "Yoga",
      time: "50 Hours",
      exercises: "45 exercises",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            header(s),
            SizedBox(
                width: s.width / 1.15,
                child: Text(
                  'Find your',
                  style: TextStyle(fontSize: 25, color: color[2]),
                )),
            Container(
              width: s.width / 1.15,
              child: Text(
                'Favourite Workouts',
                style: TextStyle(
                    fontSize: 25, color: color[2], fontWeight: FontWeight.bold),
              ),
            ),
            listView(s)
          ],
        ),
      ),
    );
  }

  Widget listView(Size s) {
    return Container(
        height: s.height / 1.25,
        width: s.width,
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => item(s, index)));
  }

  Widget item(Size s, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: s.height / 3.8,
        width: s.width / 1.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color[index]),
        child: Row(
          children: [
            Container(
              height: s.height / 3.8,
              width: s.width / 2.2,
              child: Column(
                children: [
                  SizedBox(height: s.height / 30),
                  Container(
                    width: s.width / 2.8,
                    child: Text(
                      data[index].heading,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      height: s.height / 12,
                      width: s.width / 2.8,
                      child: Column(children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            Text(
                              data[index].exercises,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.timelapse,
                              color: Colors.white,
                            ),
                            Text(
                              data[index].time,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: s.width / 2.8,
                    child: Container(
                      height: s.height / 18,
                      width: s.width / 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: s.height / 4,
              width: s.width / 2,
              decoration: BoxDecoration(
                  color: color[index],
                  image:
                      DecorationImage(image: AssetImage(data[index].imageUrl))),
            ),
          ],
        ),
      ),
    );
  }

  Widget header(Size s) {
    return Container(
      height: s.height / 12,
      width: s.width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.menu,
              color: color[2],
            ),
          ),
          SizedBox(
            width: s.width / 1.85,
          ),
          Icon(Icons.search, color: color[2]),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.notifications, color: color[2]),
          )
        ],
      ),
    );
  }
}

class Data {
  final String heading, imageUrl, exercises, time;
  Data({
    required this.exercises,
    required this.heading,
    required this.imageUrl,
    required this.time,
  });
}

import 'package:fitness_app/const.dart';
import 'package:fitness_app/screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        SizedBox(height: s.height / 20),
        Container(
          height: s.height / 1.5,
          width: s.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/1.png'), fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: s.height / 30),
        SizedBox(
          width: s.width / 1.15,
          child: Text(
            'Gest to your Ideal body',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: color[2]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            width: s.width / 1.15,
            child: Text(
              'by exercising at home',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w500, color: color[2]),
            ),
          ),
        ),
        Container(
          width: s.width / 1.15,
          alignment: Alignment.centerLeft,
          child: Container(
            height: s.height / 15,
            width: s.height / 15,
            decoration: BoxDecoration(color: color[1], shape: BoxShape.circle),
            child: IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePage())),
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}

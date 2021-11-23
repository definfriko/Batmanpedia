import 'dart:async';
import 'package:flutter/material.dart';
import 'package:batmanpedia/halaman/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 110,
        ),
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'res/splashbatman.jpg',
                  width: 225,
                  height: 225,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Batmanpedia',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
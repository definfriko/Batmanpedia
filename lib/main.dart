import 'package:batmanpedia/halaman/detailmovies.dart';
import 'package:batmanpedia/halaman/splash.dart';
import 'package:flutter/material.dart';


void main() async {
  runApp(const BatmanApp());
}

class BatmanApp extends StatelessWidget {
  const BatmanApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Batman Movies',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/home': (context) => const DetailPage(),
      },
    );
  }
}

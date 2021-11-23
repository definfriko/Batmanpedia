import 'package:batmanpedia/halaman/detailactor.dart';
import 'package:batmanpedia/halaman/detailmovies.dart';
import 'package:batmanpedia/halaman/home.dart';
import 'package:batmanpedia/halaman/homeactor.dart';
import 'package:batmanpedia/halaman/splash.dart';
import 'package:batmanpedia/model/actor_provider.dart';
import 'package:batmanpedia/model/batman_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(BatmanApp());
}

class BatmanApp extends StatelessWidget {
  // const BatmanApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BatmanProvider>(
          create: (context) => BatmanProvider(),
        ),
        ChangeNotifierProvider<ActorProvider>(
          create: (context) => ActorProvider(),
        )      
      ],
      child: MaterialApp(
        title: 'Batman Movies',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Splash(),
        },
      ),
    );
  }
}

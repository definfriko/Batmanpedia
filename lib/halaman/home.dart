import 'package:batmanpedia/card/batman_card.dart';
import 'package:batmanpedia/model/batman.dart';
import 'package:batmanpedia/model/batman_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var batmanProvider = Provider.of<BatmanProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Batman Movie"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: batmanProvider.getRecommendedMov(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Batman> data = snapshot.data;
                return Column(
                  children: data.map((item) {
                    return Container(
                      child: BatmanCard(item),
                    );
                  }).toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )
        ],
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Show>> shows;

  @override
  void initState(){
    super.initState();
    shows = fetchShows();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baptmanpedia"),
      ),
    );
  }
}














class Show {
  final String Title;
  final String Poster;

  Show({
    required this.Title,
    required this.Poster,
  });

  factory Show.fromJson(Map<String, dynamic> json) {
    return Show(
      Title: json['Title'],
      Poster: json['Poster'],
    );
  }
}

Future<List<Show>> fetchShows() async {
  final response =
      await http.get(Uri.parse('https://definfriko.github.io/apimdp/db.json'));

  if (response.statusCode == 200) {
    var topShowsJson = jsonDecode(response.body)['Search'] as List;
    return topShowsJson.map((show) => Show.fromJson(show)).toList();
  } else {
    throw Exception('Failed to load shows');
  }
}
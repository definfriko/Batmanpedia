import 'dart:convert';
import 'package:batmanpedia/model/actor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ActorProvider extends ChangeNotifier{
  getRecommendedAct() async{
    var result = await http.get(Uri.parse(
      'https://my-json-server.typicode.com/definfriko/apimdpactor/actor'));
  
  print(result.statusCode);
  print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Actor> sites = data.map((item) => Actor.fromJson(item)).toList();
      return sites; 
    } else {
      return <Actor>[];
    }
  }
}
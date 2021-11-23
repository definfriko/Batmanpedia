import 'dart:convert';
import 'package:batmanpedia/model/batman.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BatmanProvider extends ChangeNotifier {
  getRecommendedMov() async {
    var result = await http.get(Uri.parse(
        'https://my-json-server.typicode.com/definfriko/apimdp/Search'));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Batman> sites = data.map((item) => Batman.fromJson(item)).toList();
      return sites;
    } else {
      return <Batman>[];
    }
  }
}

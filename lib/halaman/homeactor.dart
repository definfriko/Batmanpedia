import 'package:batmanpedia/card/actor_card.dart';
import 'package:batmanpedia/model/actor.dart';
import 'package:batmanpedia/model/actor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeActor extends StatefulWidget {

  @override
  _HomeActorState createState() => _HomeActorState();
}

class _HomeActorState extends State<HomeActor> {
  @override
  Widget build(BuildContext context) {
    var actorProvider = Provider.of<ActorProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text ("Batman Movie Actor"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: actorProvider.getRecommendedAct(),
            builder: (context, snapshot){
              if (snapshot.hasData){
                List<Actor> data = snapshot.data;
                return Column(
                  children: data.map((item){
                    return Container(
                      child: ActorCard(item),
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
import 'package:batmanpedia/halaman/detailactor.dart';
import 'package:batmanpedia/model/actor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActorCard extends StatelessWidget {
  //const ActorCard({ Key? key }) : super(key: key);
  final Actor actor;
  ActorCard(this.actor);

  @override
Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailActor(actor),
          ),
        );
      },
      child: ListTile(
        title: Row(
          children: [
            SizedBox(
                width: 140,
                child: ClipRRect(
                  child: Image.network(actor.photo),
                  borderRadius: BorderRadius.circular(10),
                )),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actor.name,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
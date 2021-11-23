import 'package:batmanpedia/model/actor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailActor extends StatefulWidget {
  final Actor actor;
  DetailActor(this.actor);
  @override
  _DetailActorState createState() => _DetailActorState();
}

class _DetailActorState extends State<DetailActor> {
  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 200,
                height: 280,
                child: Image.network(
                  widget.actor.photo,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.actor.name,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.actor.birthname,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.actor.birth,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.actor.placebirth,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.actor.height,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.actor.cast,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    // Text(
                    //   'Broadcast : ${widget.batman.}',
                    //   style: GoogleFonts.poppins(color: Colors.grey[600]),
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${widget.actor.minibio}',
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
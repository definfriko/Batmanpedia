import 'package:batmanpedia/model/batman.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMovies extends StatefulWidget {
  // const DetailMovies({ Key? key }) : super(key: key);
  final Batman batman;
  DetailMovies(this.batman);
  @override
  _DetailMoviesState createState() => _DetailMoviesState();
}

class _DetailMoviesState extends State<DetailMovies> {
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
                  widget.batman.poster,
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
                      widget.batman.title,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Score: ${widget.batman.rating}',
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
                      '${widget.batman.description}',
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

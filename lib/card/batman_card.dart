import 'package:batmanpedia/halaman/detailmovies.dart';
import 'package:batmanpedia/model/batman.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatmanCard extends StatelessWidget {
  final Batman batman;
  BatmanCard(this.batman);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailMovies(batman),
          ),
        );
      },
      child: ListTile(
        title: Row(
          children: [
            SizedBox(
                width: 140,
                child: ClipRRect(
                  child: Image.network(batman.poster),
                  borderRadius: BorderRadius.circular(10),
                )),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      batman.title,
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

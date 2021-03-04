import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dsc() {
  return Container(
    margin: EdgeInsets.only(top: 25, bottom: 20),
    decoration: BoxDecoration(color: Colors.white),
    child: ListTile(
      title: Text(
        'DSC-DTU',
        style: GoogleFonts.comfortaa(
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      subtitle: Text(
        'Developer Student Club, DTU',
        style: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 17),
        ),
      ),
      trailing: Image.asset(
        'assets/dscImages/3.jpg',
        fit: BoxFit.fitHeight,
        height: 70,
        width: 70,
      ),
    ),
  );
}

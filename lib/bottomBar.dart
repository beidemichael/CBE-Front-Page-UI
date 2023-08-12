import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Widget BottomBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 177, 122, 177),
                offset: Offset(4, 4),
                blurRadius: 3,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.grip,
                color: Colors.purple.withOpacity(0.6),
              ),
              Text(
                'Home',
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.purple.withOpacity(0.6),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w800)),
              ),
            ],
          ),
        ),
        Icon(FontAwesomeIcons.sackDollar,
            color: Color.fromARGB(221, 128, 92, 128)),
        Icon(FontAwesomeIcons.buildingColumns,
            color: Color.fromARGB(221, 128, 92, 128)),
        Icon(FontAwesomeIcons.clockRotateLeft,
            color: Color.fromARGB(221, 128, 92, 128)),
      ],
    ),
  );
}


  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget BalanceText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Balance',
          style: GoogleFonts.baiJamjuree(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 14, 14, 4),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          '1,000 Br.',
          style: GoogleFonts.baiJamjuree(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 255, 255, 255),
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          'Saving - 1000123456789',
          style: GoogleFonts.baiJamjuree(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 70, 28, 70),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          'Aug 12 - 2023',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 176, 101, 176),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
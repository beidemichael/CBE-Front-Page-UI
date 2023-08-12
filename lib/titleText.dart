  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TitleText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Commercial Bank of Ethiopia',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 255, 255, 255),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          'The Bank You can always Rely on!',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 255, 223, 255),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomContainer(icon, text) {
    return Container(
      width: 170,
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xFFF0F0F8),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFCFCDDF),
            offset: Offset(7, 7),
            blurRadius: 14,
            spreadRadius: 6,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-5, -5),
            blurRadius: 9,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.purple.withOpacity(0.6),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Color.fromARGB(221, 128, 92, 128),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
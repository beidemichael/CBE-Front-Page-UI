import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

QRCodeScanner() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.purple.withOpacity(0.6),
      borderRadius: const BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 174, 173, 185),
          offset: Offset(4, 4),
          blurRadius: 3,
          spreadRadius: 2,
        ),
      ],
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.qrcode,
          color: Colors.white,
        ),
      ],
    ),
  );
}

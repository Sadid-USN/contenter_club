import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar apbbarHeader = AppBar(
  automaticallyImplyLeading: false,
  elevation: 0.0,
  backgroundColor: gray04,
  title: Text(
    'Contenter Club',
    style: GoogleFonts.spaceGrotesk(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w700, fontSize: 23, color: black),
    ),
  ),
  centerTitle: false,
);

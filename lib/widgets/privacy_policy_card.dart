import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyCard extends StatelessWidget {
  const PrivacyPolicyCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration:
          BoxDecoration(color: gray04, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(17.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Privacy Policy',
            style: GoogleFonts.jetBrainsMono(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 18, color: black),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Contenter Club',
            style: GoogleFonts.spaceGrotesk(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 23, color: black),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'All rights are reserved',
            style: GoogleFonts.jetBrainsMono(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 18, color: black),
            ),
          ),
        ],
      ),
    );
  }
}

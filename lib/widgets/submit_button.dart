import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  const SubmitButton({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 2),
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(color: blue, borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Submit',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(fontSize: 14, color: gray04),
          ),
        ),
      ),
    );
  }
}

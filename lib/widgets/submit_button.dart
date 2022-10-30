import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final String text;
  const SubmitButton({
    Key? key,
    required this.onTap,
    this.color = blue,
    this.textColor = gray04,
    this.text = 'Submit',
  }) : super(key: key);
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
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(fontSize: 14, color: textColor),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZText16 extends StatelessWidget {
  const ZText16({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}

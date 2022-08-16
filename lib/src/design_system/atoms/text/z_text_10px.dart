import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZText10 extends StatelessWidget {
  const ZText10({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
          color: Colors.grey,
        ),
      ),
    );
  }
}

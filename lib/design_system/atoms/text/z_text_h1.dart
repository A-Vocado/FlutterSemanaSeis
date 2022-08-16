import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZTextH1 extends StatelessWidget {
  const ZTextH1({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 26,
          color: Color(0xFF1E232C),
        ),
      ),
    );
  }
}

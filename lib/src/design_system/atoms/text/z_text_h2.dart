import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZTextH2 extends StatelessWidget {
  const ZTextH2({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 26,
          color: Colors.white,
        ),
      ),
    );
  }
}

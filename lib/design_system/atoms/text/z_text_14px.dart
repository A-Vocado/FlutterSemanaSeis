import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZText14 extends StatelessWidget {
  const ZText14({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}

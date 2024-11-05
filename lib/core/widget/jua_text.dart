import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class JuaText extends StatelessWidget {
  String str;
  Color? color;
  double? fontsize;
  JuaText({super.key, required this.str, this.color, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      style: GoogleFonts.jua(
        textStyle: TextStyle(color: color ?? Colors.grey),
        fontSize: fontsize ?? 14,
      ),
    );
  }
}

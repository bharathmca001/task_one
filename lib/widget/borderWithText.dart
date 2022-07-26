import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class borderWithText extends StatelessWidget {
  String text;

  borderWithText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 50),
      child: DottedBorder(
        color: Colors.orangeAccent,
        borderType: BorderType.RRect,
        padding: EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Center(
            child: AutoSizeText(
              '$text',
              maxFontSize: 12,
              style: GoogleFonts.lato(),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_test/about_me_extra.dart';

Widget buildHeading(List listWord) {
  return RichText(
    text: TextSpan(
      style: GoogleFonts.inter(
        textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      children: List.generate(
        listWord.length,
        (index) {
          return TextSpan(
            text: listWord[index],
            style: TextStyle(color: index % 2 == 0 ? const Color(0xFF283593) : const Color(0xFF424970)),
          );
        },
      ),
    ),
  );
}

/// default fontSize: 14.0
Widget buildSubHeading(String text, {double? fontSize}) {
  return Text(
    text,
    style: GoogleFonts.inter(
      textStyle: TextStyle(
        color: const Color(0xFF536DFE),
        fontSize: fontSize ?? 14.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.0,
      ),
    ),
  );
}

/// default fontSize: 16.0
Widget buildContent(String text, {double? fontSize}) {
  return Text(
    text,
    style: GoogleFonts.inter(
      textStyle: TextStyle(
        color: const Color(0xFF424970),
        fontSize: fontSize ?? 16.0,
        fontWeight: FontWeight.w500,
        height: 2.0,
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BadgeIconAtom extends StatelessWidget {
  const BadgeIconAtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '0',
      style: GoogleFonts.inter(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
    );
  }
}

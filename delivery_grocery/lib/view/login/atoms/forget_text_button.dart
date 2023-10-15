import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotTextButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? fontSize;
  final Color? fontColor;
  final double? letterSpacing;

  const ForgotTextButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.fontSize,
    this.fontColor = Colors.black,
    this.letterSpacing = -14 * 0.02,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
          (states) => Colors.grey,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/app/core/theming/app_colors.dart';

import '../atoms/buttons_bouncing_effect.dart';

class CustomButton extends StatelessWidget {
  final Widget? icon;
  final String title;
  final bool isLoading;
  final Function()? onPressed;
  final Color background;
  final Color borderColor;
  final Color textColor;
  final double width;
  final double radius;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isLoading = false,
    this.background = AppColors.primaryColor, // = Style.primaryColor,
    this.textColor = AppColors.blackColor, //Style.blackColor,
    this.width = double.infinity,
    this.radius = 10,
    this.icon,
    this.borderColor = Colors.transparent, //Style.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BouncingEffect(
      child: GestureDetector(
        onTap: isLoading ? null : onPressed,
        child: Container(
          width: width,
          height: 48,
          decoration: BoxDecoration(
            color: background,
            border: Border.all(
              color: borderColor == Colors.transparent
                  ? background
                  : borderColor,  
              width: 2,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          alignment: Alignment.center,
          child: isLoading
              ? const Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                        strokeWidth: 3, color: Colors.white
                        // Style.white,
                        ),
                  ),
                )
              : (icon == null
                  ? Text(
                      title,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: textColor,
                        // background == Style.primaryColor
                        //     ? Style.white
                        //     : textColor,
                        letterSpacing: -14 * 0.01,
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icon!,
                        const SizedBox(width: 16),
                        // 16.horizontalSpace,
                        Text(
                          title,
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                          // style: Style.interNormal(
                          //   size: 16,
                          //   color: background == Style.primaryColor
                          //       ? Style.white
                          //       : textColor,
                          // ),
                        ),
                      ],
                    )),
        ),
      ),
    );
  }
}

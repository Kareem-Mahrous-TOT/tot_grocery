import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theming/app_colors.dart';

class CustomToggleElement extends StatefulWidget {
  final Color activeColor;
  final Color inActiveColor;
  final bool isOnline;
  final ValueChanged<bool> onChange;
  final bool isOrder;

  const CustomToggleElement({
    Key? key,
    required this.isOnline,
    required this.onChange,
    this.isOrder = false,
    this.activeColor = AppColors.primaryColor,
    this.inActiveColor = AppColors.greyColor,
  }) : super(key: key);

  @override
  State<CustomToggleElement> createState() => _CustomToggleElementState();
}

class _CustomToggleElementState extends State<CustomToggleElement> {
  var controller = ValueNotifier<bool>(false);

  @override
  void initState() {
    controller = ValueNotifier<bool>(widget.isOnline);
    controller.addListener(() {
      widget.onChange(controller.value);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
      controller: controller,
      activeColor: widget.activeColor,
      inactiveColor: widget.inActiveColor,
      borderRadius: BorderRadius.circular(10),
      width: widget.isOrder ? 70 : 94,
      height: widget.isOrder ? 32 : 40,
      enabled: true,
      disabledOpacity: 0.5,
      thumb: Container(
        margin: EdgeInsets.all(widget.isOrder ? 2 : 4),
        padding: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: widget.inActiveColor.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: double.infinity,
              width: 3,
              color: widget.inActiveColor,
            ),
            const SizedBox(width: 2),
            Container(
              height: double.infinity,
              width: 3,
              color: widget.inActiveColor,
            )
          ],
        ),
      ),
      activeChild: Text(
        !widget.isOrder ? "online" : "active",
        style: GoogleFonts.inter(
          fontSize: widget.isOrder ? 12 : 14,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.3,
          color: Colors.black,
        ),
      ),
      inactiveChild: Text(
        !widget.isOrder ? "offline" : "inactive",
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: widget.isOrder ? 12 : 14,
          letterSpacing: -0.3,
          color: Colors.black,
        ),
      ),
    );
  }
}

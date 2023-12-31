import 'package:flutter/material.dart';
import 'package:vendor_foody/core/theme/app_colors.dart';

class BottomNavigatorItem extends StatelessWidget {
  final VoidCallback onTap;
  final int index;
  final int currentIndex;
  final IconData selectIcon;
  final IconData unSelectIcon;
  final bool isScrolling;

  const BottomNavigatorItem({
    Key? key,
    required this.onTap,
    required this.index,
    required this.selectIcon,
    required this.unSelectIcon,
    required this.currentIndex,
    required this.isScrolling,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        color: AppColors.transparent,
        height: 30,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: index == currentIndex
                  ? Icon(
                      selectIcon,
                      size: 20,
                      color: AppColors.white,
                    )
                  : Icon(
                      unSelectIcon,
                      size: 20,
                      color: AppColors.white,
                    ),
            ),
            AnimatedContainer(
              height: 2,
              width: 20,
              decoration: BoxDecoration(
                color: index == currentIndex
                    ? AppColors.primaryColor
                    : AppColors.transparent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
              duration: const Duration(milliseconds: 400),
            )
          ],
        ),
      ),
    );
  }
}

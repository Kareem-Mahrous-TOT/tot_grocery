import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarTextMolecule extends StatelessWidget {
  final String? imageUrl;
  final String? categoryName;
  final void Function()? onTap;

  const AvatarTextMolecule(
      {Key? key,
      required this.imageUrl,
      required this.categoryName,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              height: 80.w,
              width: 80.w,
              decoration:
                  const BoxDecoration(color: white, shape: BoxShape.circle),
              padding: REdgeInsets.all(2),
              child: ClipOval(child: Image.network(imageUrl!)),
            ),
            Text(
              categoryName.toString(),
              style: TextStyle(
                fontSize: 15.sp,
                color: black,
                letterSpacing: -0.26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

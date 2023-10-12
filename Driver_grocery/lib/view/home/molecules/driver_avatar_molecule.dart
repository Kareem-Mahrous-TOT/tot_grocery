import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app/config/routes.dart';
import '../atoms/common_image_atom.dart';

class DriverAvatarMolecule extends StatelessWidget {
  final String? imageUrl;
  final num? rating;

  const DriverAvatarMolecule({Key? key, required this.imageUrl, this.rating})
      : assert(rating == null || rating <= 5),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.profileRoute);
      },
      child: SizedBox(
        height: 70,
        child: Stack(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              padding: const EdgeInsets.all(2),
              child: ClipOval(child: CommonImageAtom(imageUrl: imageUrl)),
            ),
            Positioned(
              top: 40,
              left: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: Row(
                  children: [
                    const Icon(
                      FlutterRemix.star_smile_fill,
                      color: Colors.white,
                      size: 12,
                    ),
                    Text(
                      double.parse((rating ?? 0.0).toString())
                          .toStringAsFixed(1),
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.white,
                        letterSpacing: -0.26,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

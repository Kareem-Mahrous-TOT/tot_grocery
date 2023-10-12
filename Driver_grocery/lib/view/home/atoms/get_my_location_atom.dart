import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

class GetMyLocationAtom extends StatelessWidget {
  const GetMyLocationAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: const Icon(FlutterRemix.focus_3_fill),
    );
  }
}

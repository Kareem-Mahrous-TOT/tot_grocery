import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_project/app/config/routes.dart';
import 'package:test_project/view/orders/molecules/order_party_image_molecule.dart';

import '../../app/core/value_managers/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacementNamed(context, Routes.loginRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: OrderPartyImageMolecule(
          img: ImgManager.networkLogin,
          isCircel: false,
          shimmerSize: 150,
          imgHeight: 150,
          imgWidth: 150,
        ),
      ),
    );
  }
}

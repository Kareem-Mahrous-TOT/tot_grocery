import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/core/theming/app_colors.dart';
import '../../domain/entites/profile_entity.dart';
import 'molecules/account_stats_molecule.dart';
import 'molecules/custom_floating_molecule.dart';
import 'organisms/profile_app_bar.dart';
import 'organisms/sections_organism.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ProfileEntity profileModel;

  final profileJson = {
    "appbar": {
      "name": "Deliveryboy",
      // "img": "",
      "rating": 3.5,
      "id": "id",
    },
    "accountStats": {
      "balance": "1.0e+219",
      "lastProfit": 25000000.0,
      "deliveredOrders": 140,
    },
  };

  @override
  void initState() {
    super.initState();

    setState(() {
      profileModel = ProfileEntity.fromJson(json: profileJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.greyColor,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: const CustomFloatingMolecule(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.h),
        child: ProfileAppBar(
          profileImg: profileModel.appBarModel.img,
          rating: profileModel.appBarModel.rating,
          name: profileModel.appBarModel.name,
          id: profileModel.appBarModel.id,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            AccountStats(
              balance: profileModel.accountStatsModel.balance.toString(),
              deliveredOrders: profileModel.accountStatsModel.deliveredOrders,
              lastProfit: profileModel.accountStatsModel.lastProfit,
            ),
            const SectionsOrganism(
                // sectionModels: profileModel.sectionItemModels,
                ),
          ],
        ),
      ),
    );
  }
}

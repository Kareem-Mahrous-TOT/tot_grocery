import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:test_project/domain/entites/story_model.dart';

import '../../../app/components/molecules/bottom_sheet/base_presistent_bottom_sheet.dart';
import '../../../app/core/theming/app_colors.dart';
import '../../stories/stories_screen.dart';
import '../molecules/balance_molecule.dart';
import '../molecules/benefit_molecule.dart';
import '../molecules/story_card_molecule.dart';

class DefaultBottomSheet extends StatelessWidget {
  final List<StoryEntity> stories;

  const DefaultBottomSheet({Key? key, required this.stories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePresistentBottomSheet(
      height: 336,
      child: Column(
        children: [
          Container(
            height: 4,
            width: 48,
            decoration: BoxDecoration(
              color: AppColors.bottomSheetIconColor,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Column(
            children: [
              18.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BalanceMolecule(),
                  BenefitMolecule(),
                ],
              ),
              SizedBox(
                height: 186,
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 24),
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return StoresCardMolecule(
                      img: stories[index].imgLink,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoriesScreen(
                              stories: stories,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

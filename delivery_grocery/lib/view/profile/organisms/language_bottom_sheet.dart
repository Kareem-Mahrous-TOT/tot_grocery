import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/base_bottom_sheet.dart';
import 'package:test_project/app/core/theming/app_colors.dart';
import 'package:test_project/app/core/value_managers/app_strings.dart';

import '../../../app/components/atoms/keyboard_disable_atom.dart';
import '../../../app/components/elements/select_item.dart';
import '../../../app/components/elements/title_icon.dart';
import '../../../app/components/molecules/custom_button.dart';
import '../../../domain/entites/language_entity.dart';

class LanguagesBottomSheet extends StatelessWidget {
  // final Function(LanguageData?)? afterUpdate;

  const LanguagesBottomSheet({Key? key}) : super(key: key); //, this.afterUpdate

  @override
  Widget build(BuildContext context) {
    // bool isLoading = false;
    int currentIndex = 0;
    final List<LanguageEntity> languages = [
      LanguageEntity(title: 'English'),
      LanguageEntity(title: "عربي"),
      LanguageEntity(title: "Deutsch"),
    ];
    // const bool isLtr = true; //LocalStorage.instance.getLangLtr();
    // final event = ref.read(languagesProvider.notifier);
    // final state = ref.watch(languagesProvider);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: KeyboardDisableAtom(
        child: BaseBottomSheet(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                18.verticalSpace,
                const TitleAndIcon(
                  title: AppStrings.language,
                ),
                24.verticalSpace,
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: languages.length,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SelectItem(
                      activeColor: AppColors.primaryColor,
                      onTap: () {
                        // event.change(index);
                      },
                      isActive: currentIndex == index,
                      title: languages[index].title,
                    );
                  },
                ),
                18.verticalSpace,
                CustomButton(
                  background: AppColors.primaryColor,
                  textColor: AppColors.white,
                  title: AppStrings.save,
                  onPressed: () {
                    // ref.read(languagesProvider.notifier).makeSelectedLang(
                    //     afterUpdate: afterUpdate, context: context);
                    // Navigator.pop(context);
                  },
                ),
                24.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

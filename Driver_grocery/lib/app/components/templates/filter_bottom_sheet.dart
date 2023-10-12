import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/base_bottom_sheet.dart';

import '../../core/theming/app_colors.dart';
import '../../core/theming/app_fonts.dart';
import '../../core/value_managers/app_strings.dart';
import '../elements/title_icon.dart';
import '../molecules/custom_button.dart';
import '../molecules/custom_tab_bar.dart';
import '../organisms/custom_date_picker.dart';

class FilterBottomSheet extends StatefulWidget {
  final double? height;
  final bool isTabBar;
  final bool isParcel;
  final DateTime? start;
  final DateTime? end;

  const FilterBottomSheet(
      {Key? key,
      this.height,
      this.isTabBar = true,
      this.start,
      this.end,
      this.isParcel = false})
      : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<DateTime?> _rangeDatePicker = [];
  List<DateTime?> newList = [];

  final _tabs = const [
    Tab(
      child: Text(
        AppStrings.today,
      ),
    ),
    Tab(
      child: Text(
        AppStrings.weekly,
        maxLines: 1,
        overflow: TextOverflow.clip,
      ),
    ),
    Tab(
      child: Text(
        AppStrings.monthly,
        maxLines: 1,
        overflow: TextOverflow.clip,
      ),
    ),
    Tab(
      child: Text(
        AppStrings.overall,
      ),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _rangeDatePicker = [
      widget.start ?? DateTime.now(),
      widget.end ?? DateTime.now(),
    ];
    _tabController.addListener(() {
      switch (_tabController.index) {
        case 0:
          _rangeDatePicker = [
            DateTime.now(),
            DateTime.now(),
          ];
          newList = _rangeDatePicker;
          break;
        case 1:
          _rangeDatePicker = [
            DateTime.now().subtract(const Duration(days: 7)),
            DateTime.now(),
          ];
          newList = _rangeDatePicker;
          break;
        case 2:
          _rangeDatePicker = [
            DateTime.now().subtract(const Duration(days: 30)),
            DateTime.now(),
          ];
          newList = _rangeDatePicker;
          break;
        case 3:
          _rangeDatePicker = [
            DateTime.now().subtract(const Duration(days: 120)),
            DateTime.now(),
          ];
          newList = _rangeDatePicker;
          break;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      // height: 455.h,
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TitleAndIcon(title: AppStrings.filter),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              AppStrings.selectDesiredOrderHistory,
              style: AppFontStyles.interNormal(
                  size: 14, color: AppColors.blackColor, letterSpacing: -0.3),
            ),
          ),
          widget.isTabBar
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: CustomTabBar(
                    scroll: true,
                    tabController: _tabController,
                    tabs: _tabs,
                  ),
                )
              : const SizedBox.shrink(),
          CustomDatePicker(
            range: _rangeDatePicker,
            onChange: (n) {
              newList = n;
            },
          ),
          16.verticalSpace,
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                  title: AppStrings.save,
                  onPressed: () {
                    // widget.isTabBar
                    //     ? widget.parcel
                    //         ? ref
                    //             .read(parcelProvider.notifier)
                    //             .fetchHistoryOrders(context,
                    //                 start: _newList.first, end: _newList.last)
                    //         : ref.read(orderProvider.notifier).fetchHistoryOrders(
                    //             context,
                    //             start: _newList.first,
                    //             end: _newList.last)
                    //     : ref.read(statisticsProvider.notifier).fetchStatistics(
                    //         startTime: _newList.last ?? DateTime.now(),
                    //         endTime: _newList.first ?? DateTime.now());
                    // context.popRoute();
                  })

              // Consumer(builder: (context, ref, child) {
              //   return }),
              ),
        ],
      ),
    );
  }
}

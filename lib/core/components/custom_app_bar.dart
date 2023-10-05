import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itargs/core/helpers/extensions.dart';
import 'package:itargs/features/Home/view_model/tab_item_view_model.dart';
import 'package:itargs/generated/locale_keys.g.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String getCurrentTitle() {
      if (ref.watch(TabItemViewModel.provider).currentTab.index == 0) {
        return LocaleKeys.screenTitle_home.tr();
      } else {
        return LocaleKeys.screenTitle_more.tr();
      }
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60.h,
            decoration: BoxDecoration(
                color: context.theme.appBarTheme.backgroundColor,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, offset: Offset(0, 1), blurRadius: 4),
                ]),
            child: Center(
              child:
                  Text(getCurrentTitle(), style: context.textTheme.displayLarge),
            ),
          ),
          40.verticalSpace,
        ],
      ),
    );
  }
}

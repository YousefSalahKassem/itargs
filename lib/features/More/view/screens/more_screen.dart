import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itargs/core/components/custom_app_bar.dart';
import 'package:itargs/core/components/custom_divider.dart';
import 'package:itargs/core/helpers/extensions.dart';
import 'package:itargs/core/helpers/locale.dart';
import 'package:itargs/core/notifiers/app_theme_notifiers.dart';
import 'package:itargs/features/More/view/widgets/settings_item.dart';
import 'package:itargs/generated/locale_keys.g.dart';

class MoreScreen extends ConsumerWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(AppThemeNotifier.provider).isDarkMode;
    void toggleTheme() {
      ref.read(AppThemeNotifier.provider).toggleTheme();
    }

    void toggleLanguage(bool isArabic) {
      if (isArabic) {
        context.setLocale(AppLocale.arabic);
      } else {
        context.setLocale(AppLocale.english);
      }
    }


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Text(
            LocaleKeys.settings_title.tr(),
            style: context.textTheme.displayLarge,
          ),
        ),
        const CustomDivider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: SettingsItem(
            title: LocaleKeys.settings_theme.tr(),
            selected: isDark,
            onChanged: (_) {
              toggleTheme();
            },
          ),
        ),
        const CustomDivider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: SettingsItem(
            title: LocaleKeys.settings_language.tr(),
            selected: context.isArabic,
            onChanged: (isArabic) {
              toggleLanguage(isArabic);
            },
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}

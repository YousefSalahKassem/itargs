import 'package:easy_localization/easy_localization.dart';
import 'package:itargs/generated/locale_keys.g.dart';

class Tab {
  String title;
  int index;

  Tab({required this.title, required this.index});

  factory Tab.home() => Tab(title: LocaleKeys.screenTitle_home.tr(), index: 0);

  factory Tab.more() => Tab(title: LocaleKeys.screenTitle_more.tr(), index: 1);

  static Tab findByIndex(int index) {
    if (index == 0) {
      return Tab.home();
    } else {
      return Tab.more();
    }
  }
}

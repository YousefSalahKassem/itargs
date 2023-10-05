import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/features/Home/view_model/tab_item_view_model.dart';
import 'package:itargs/generated/locale_keys.g.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<BottomNavigationBarItem> tabs = [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home_filled),
        label: LocaleKeys.tabs_home.tr(),
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.more),
        label: LocaleKeys.tabs_more.tr(),
      ),
    ];

    final currentTab = ref.watch(TabItemViewModel.provider).currentTab.index;

    void selectTab(int tab) {
      ref.read(TabItemViewModel.provider.notifier).setCurrentTab(tab);
    }

    return BottomNavigationBar(
      items: tabs,
      currentIndex: currentTab,
      onTap: (tab) => selectTab(tab),
    );
  }
}

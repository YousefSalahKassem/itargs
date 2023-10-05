import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/core/routes/route.dart';
import 'package:itargs/features/Home/view/screens/top_likes_screen.dart';
import 'package:itargs/features/Home/view/widgets/bottom_nav_bar.dart';
import 'package:itargs/features/Home/view/widgets/fade_index_stack.dart';
import 'package:itargs/features/Home/view_model/tab_item_view_model.dart';
import 'package:itargs/features/More/view/screens/more_screen.dart';

class HomeScreen extends ConsumerWidget {
  static final route = NoArgRoute.screen(
    name: "Home",
    path: "/home",
    screenBuilder: (context, _) {
      return const HomeScreen();
    },
  );

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Scaffold(
      body: const _Body(),
      bottomNavigationBar: Localizations.override(
          context: context, locale: context.locale, child: BottomNavBar(),),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(TabItemViewModel.provider).currentTab.index;

    return SafeArea(
      child: FadeIndexedStack(index: currentIndex, children: const [
        TopLikesScreen(),
        MoreScreen(),
      ]),
    );
  }
}

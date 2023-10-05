import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itargs/core/components/custom_divider.dart';
import 'package:itargs/core/components/widget_life_cycle_listener.dart';
import 'package:itargs/core/helpers/extensions.dart';
import 'package:itargs/core/themes/app_assets.dart';
import 'package:itargs/features/Home/view_model/media_player_view_model.dart';
import 'package:itargs/features/Home/view_model/radio_view_model.dart';
import 'package:itargs/generated/locale_keys.g.dart';

class AudioSection extends StatelessWidget {
  const AudioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Text(
            LocaleKeys.home_top_likes.tr(),
            style: context.textTheme.displayLarge,
          ),
        ),
        const CustomDivider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: const _MediaPlayerSection(),
        ),
        const CustomDivider(),

      ],
    );
  }
}

class _MediaPlayerSection extends ConsumerWidget {
  const _MediaPlayerSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radioState = ref.watch(RadioViewModel.provider);
    return Localizations.override(
      context: context,
      locale: context.locale,
      child: radioState.when(
        data: (radioUrl) =>
            ListTile(
              title: Text(LocaleKeys.home_play.tr()),
              leading: _MediaPlayer(url: radioUrl),
            ),
        loading: () => const Center(child: CircularProgressIndicator(),),
        error: (message) =>
            Text(message, style: context.textTheme.displayLarge,),
      ),
    );
  }
}

class _MediaPlayer extends ConsumerWidget {
  final String url;

  const _MediaPlayer({required this.url});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaPlayerState = ref.watch(MediaPlayerViewModel.provider(url));
    final mediaPlayerNotifier = ref.watch(MediaPlayerViewModel
        .provider(url)
        .notifier);
    final isPlaying = mediaPlayerState;
    return WidgetLifecycleListener(
      onInit: ()=> mediaPlayerNotifier.init(),
      onDispose: ()=> mediaPlayerNotifier.dispose(),
      child: GestureDetector(
        onTap: () async {
          await mediaPlayerNotifier.toggle();
        },
        child: isPlaying ? Image.asset(AppAssets.pause) : Image
            .asset(AppAssets.play),
      ),
    );
  }
}
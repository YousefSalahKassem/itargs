import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/core/components/custom_app_bar.dart';
import 'package:itargs/features/Home/view/widgets/audio_section.dart';
import 'package:itargs/features/Home/view/widgets/top_like_section.dart';

class TopLikesScreen extends ConsumerWidget {
  const TopLikesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        TopLikeSection(),
        AudioSection(),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/core/helpers/extensions.dart';

class SettingsItem extends ConsumerWidget {
  final String title;
  final bool selected;
  final void Function(bool)? onChanged;

  const SettingsItem(
      {super.key,
      required this.title,
      required this.selected,
      required this.onChanged});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(
        title,
        style: context.textTheme.displayMedium,
      ),
      trailing: CupertinoSwitch(
        value: selected,
        onChanged: onChanged,
        activeColor: Colors.purple,
      ),
    );
  }
}

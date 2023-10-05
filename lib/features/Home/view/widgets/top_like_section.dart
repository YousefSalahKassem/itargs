import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itargs/core/components/custom_divider.dart';
import 'package:itargs/core/helpers/extensions.dart';
import 'package:itargs/generated/locale_keys.g.dart';

class TopLikeSection extends StatelessWidget {
  const TopLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        const _DummyData(),
        const CustomDivider(),

      ],
    );
  }
}

class _DummyData extends StatefulWidget {
  const _DummyData();

  @override
  State<_DummyData> createState() => _DummyDataState();
}

class _DummyDataState extends State<_DummyData> {
  List<bool> isSelectedList = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        void toggleHeart() {
          setState(() {
            isSelectedList[index] = !isSelectedList[index];
          });
        }
        return ListTile(
          title: Text(
            "Sample Text ${index + 1}",
          ),
          trailing: IconButton(
            onPressed: () {
              toggleHeart();
            },
            icon: Icon(
              isSelectedList[index]
                  ? CupertinoIcons.heart_fill
                  : CupertinoIcons.heart,
              color: Colors.red,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const CustomDivider();
      },
      itemCount: 3,
    );
  }
}

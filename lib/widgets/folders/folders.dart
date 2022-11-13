import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/resources/colors/colors.dart';
import 'package:note_app/resources/constants/asset_path.dart';
import 'package:note_app/resources/fonts/enum_text_styles.dart';
import 'package:note_app/resources/fonts/text_styles.dart';

class FolderGrid extends StatefulWidget {
  final bool isLocked;
  final String title;
  final int numberOfNote;
  const FolderGrid(
      {super.key,
      this.title = "Sample",
      this.numberOfNote = 0,
      required this.isLocked});

  @override
  State<FolderGrid> createState() => _FolderGridState();
}

class _FolderGridState extends State<FolderGrid> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Opacity(
        opacity: 0.1,
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          width: 190.w,
          height: 180.h,
          // padding: EdgeInsets.symmetric(horizontal: 12.w,),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: AppColors.primary,
          ),
        ),
      ),
      Positioned(
        left: 30.w,
        right: 16.w,
        top: 32.07.h,
        bottom: 28.5.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(widget.isLocked
                    ? AssetPaths.folderLocked
                    : AssetPaths.folderUnlocked),
                IconButton(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Image.asset(
                      AssetPaths.showMore,
                    ))
              ],
            ),
            Text(
              widget.title,
              style: AppTextStyles.h6[TextWeights.semibold]
                  ?.copyWith(color: AppColors.gray[80]),
            ),
            Text(
              widget.numberOfNote<2?"${widget.numberOfNote} note":"${widget.numberOfNote} notes",
              style: AppTextStyles.caption[TextWeights.regular]
                  ?.copyWith(color: AppColors.gray[60]),
            )
          ],
        ),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/app_colors.dart';

class StoryCard extends AppColors {
  const StoryCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.w,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: ColoredBox(
                color: lightPrimary,
                child: SizedBox(
                  height: 50.sp,
                  width: 51.sp,
                  child: Icon(
                    Icons.add,
                    size: 35.sp,
                    color: theme,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'Me',
            style: TextStyle(
              color: theme,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: ColoredBox(
              color: lightPrimary,
              child: SizedBox(
                height: 50.sp,
                width: 51.sp,
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'Who',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      );
    }
  }
}

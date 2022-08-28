import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/utils/themes/app_colors.dart';

class AuthButton extends AppColors {
  const AuthButton({required this.title,Key? key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: ColoredBox(
        color: theme,
        child: SizedBox(
          width: size.width * 0.4,
          height: 70.h,
          child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: 'MartelSans',
                    color: Colors.white,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
        ),
      ),
    );
  }
}

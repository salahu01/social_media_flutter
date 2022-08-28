import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/utils/themes/app_colors.dart';

class AuthDialog extends AppColors {
  const AuthDialog({required this.dialog,required this.title,Key? key}) : super(key: key);
  final String dialog;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: dialog,
                style: TextStyle(
                    fontFamily: 'MartelSans',
                    color: extraLight,
                    fontSize: 17.sp),
                children: <TextSpan>[
                  TextSpan(
                    text: ' / ',
                    style: TextStyle(
                        fontFamily: 'MartelSans',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: title,
                    style: TextStyle(
                        fontFamily: 'MartelSans',
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          );
  }
}
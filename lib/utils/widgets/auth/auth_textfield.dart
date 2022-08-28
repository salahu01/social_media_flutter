import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/utils/themes/app_colors.dart';

class AuthTextField extends AppColors {
  const AuthTextField({required this.controller,required this.title,Key? key}) : super(key: key);
  final String title ;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: size.width * 0.9,
        height: 73.h,
        child: TextFormField(
          controller: controller,
          style: TextStyle(
              fontFamily: 'MartelSans',
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700),
          decoration: InputDecoration(
            label: Text(title,
                style: TextStyle(fontSize: 17.sp,fontFamily: 'MartelSans', color: theme)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(width: 2.sp, color: Colors.red)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(width: 2.sp, color: theme)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(width: 2.sp, color: theme)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(color: theme)),
          ),
        ),
      ),
    );
  }
}

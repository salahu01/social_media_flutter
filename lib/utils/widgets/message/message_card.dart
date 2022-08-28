import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/app_colors.dart';

class MessageCard extends AppColors {
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: ColoredBox(
        color: Colors.black38,
        child: SizedBox(
          height: 94.sp,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.r),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18.r),
                  child: Image.asset(
                    'assets/images/profile-4.jpeg',
                    width: 70.sp,
                    height: 69.sp,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 20.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Lucas Angelov',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Blogger',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: SizedBox(
                    height: 39.sp,
                    width: 39.sp,
                    child: ColoredBox(
                      color: theme,
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/app_colors.dart';

class PostCard extends AppColors {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              'assets/images/profile-11.jpg',
              height: 47.sp,
              width: 47.sp,
              fit: BoxFit.cover,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jhon Martinez',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                'Center Park . NVC',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          trailing: Icon(Icons.more_vert_rounded,
          color: Colors.white,
          size: 42.sp,
          shadows: const [
            BoxShadow(
              color: Colors.white,
              offset: Offset(-1, 0),
            )
          ],
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.r),
              child: Image.asset('assets/images/post.png',
              width: 386.sp,
              height: 416.sp,
              fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          children: [
            const Spacer(),
            Icon(Icons.favorite_border,
            color: Colors.white,
            size: 30.sp,
            ),
            const Spacer(),
            Icon(Icons.mode_comment,
            color: Colors.white,
            size: 30.sp,
            ),
            const Spacer(),
            Icon(Icons.share,
            color: Colors.white,
            size: 30.sp,
            ),
            const Spacer(flex: 12),
            Icon(Icons.swap_vert,
            color: Colors.white,
            size: 30.sp,
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: 15.h)
      ],
    );
  }
}

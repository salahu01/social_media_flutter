import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.r),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.r),
            child: Image.asset('assets/images/profile-14.jpg',
            width: 70.sp,
            height: 70.sp,
            fit: BoxFit.cover,
            ),
          ),
          SizedBox(width:20.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lucas Angelov',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(height: 17.h),
              Text('Blogger',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}

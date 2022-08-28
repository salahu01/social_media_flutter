import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/themes/app_colors.dart';
import '../../../../utils/widgets/widgets.dart';

class HomeView extends AppColors {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: primary,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const SizedBox(),
        leadingWidth: 0,
        toolbarHeight: 197.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                size: 30.sp,
              ),
            ),
            SizedBox(
              height: 96.h,
              width: double.maxFinite,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20.w);
                },
                itemBuilder: (BuildContext context, int index) {
                  return StoryCard(index: index);
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10.h);
                },
                itemBuilder: (BuildContext context, int index) {
                  return const PostCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

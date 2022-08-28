import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/widgets/widgets.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 70.sp,
        title: Center(
          child: Text(
            'Messages',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.sp,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.r),
              child: SizedBox(
                height: 46.sp,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    hintMaxLines: 1,
                    suffixIcon: const Icon(Icons.search),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23.h),
            ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 23.h);
              },
              itemBuilder: (BuildContext context, int index) {
                return const MessageCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}

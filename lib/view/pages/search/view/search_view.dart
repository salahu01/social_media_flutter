import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/widgets/widgets.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 93.sp,
        title: Center(
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
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 23.h);
        },
        itemBuilder: (BuildContext context, int index) {
          return const SearchCard();
        },
      ),
    );
  }
}

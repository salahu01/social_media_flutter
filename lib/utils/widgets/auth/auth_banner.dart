import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBanner extends StatelessWidget {
  const AuthBanner({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    'assets/images/profile-12.jpg',
                    width: size.aspectRatio * 115,
                    height: size.aspectRatio * 115,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height / 40, left: size.width / 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    'assets/images/profile-4.jpeg',
                    width: size.aspectRatio * 130,
                    height: size.aspectRatio * 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height / 25, left: size.width / 1.90),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    'assets/images/profile-11.jpg',
                    width: size.aspectRatio * 135,
                    height: size.aspectRatio * 135,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height / 7.5, left: size.width / 4.5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    'assets/images/post.png',
                    width: size.aspectRatio * 190,
                    height: size.aspectRatio * 190,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height / 5.5, left: size.width / 1.45),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    'assets/images/profile-9.jpg',
                    width: size.aspectRatio * 145,
                    height: size.aspectRatio * 145,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height / 30),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: 'MartelSans',
                  color: Colors.white,
                  fontSize: 43.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: size.height / 30),
      ],
    );
  }
}

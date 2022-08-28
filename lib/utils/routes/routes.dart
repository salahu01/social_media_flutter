import 'package:flutter/material.dart';
import 'package:social_media/utils/themes/app_colors.dart';
import 'package:social_media/view/auth/forget/forget.dart';
import 'package:social_media/view/auth/login/view/login_view.dart';
import 'package:social_media/view/controller/controller.dart';
import '../../view/auth/signup/signup.dart';

abstract class AppRoutes extends AppColors {
  const AppRoutes({super.key});
  openSignUP(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context) => const SignUp()));
  }
  goBack(BuildContext context){
    Navigator.pop(context);
  }
  openLogIn(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context) => LogIn()));
  }
  openForget(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context) => Forget()));
  }
  openController(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context) => const Controller()));
  }
}

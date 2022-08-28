import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/view/auth/login/view/login_view.dart';
import 'utils/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends AppColors {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: theme),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: theme,
          ),
        ),
        home: LogIn(),
      ),
    );
  }
}

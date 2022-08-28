import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media/utils/routes/routes.dart';
import '../../../../utils/widgets/widgets.dart';

class Forget extends AppRoutes {
  Forget({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: primary,
          statusBarIconBrightness: Brightness.light,
        ),
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const AuthBanner(title: 'Sign Up'),
          AuthTextField(title: 'email', controller: emailController),
          const Expanded(child: SizedBox()),
          InkWell(
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              onTap: () => openController(context),
              child: const AuthButton(title: 'Send')),
          const Expanded(child: SizedBox()),
          InkWell(
              onTap: () => goBack(context),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              child: const AuthDialog(
                  dialog: 'Do you have an account?', title: ' LogIn')),
          const Expanded(flex: 5, child: SizedBox()),
        ],
      ),
    );
  }
}

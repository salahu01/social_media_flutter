import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media/utils/routes/routes.dart';
import 'package:social_media/utils/widgets/auth/auth_passfied/view/auth_passfield.dart';
import 'package:social_media/utils/widgets/widgets.dart';

class LogIn extends AppRoutes {
  LogIn({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          const AuthBanner(title: 'Log In'),
          AuthTextField(
            title: 'username',
            controller: emailController,
          ),
          SizedBox(height: size.height / 30),
          AuthPassField(controller: passwordController),
          SizedBox(height: size.height / 30),
          InkWell(
              onTap: () => openForget(context),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              child: const AuthDialog(
                  dialog: 'Forget password ?', title: ' Reset ')),
          const Expanded(child: SizedBox()),
          InkWell(
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              onTap: () => openController(context),
              child: const AuthButton(title: 'Log In')),
          const Expanded(flex: 2, child: SizedBox()),
          InkWell(
              onTap: () => openSignUP(context),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              child: const AuthDialog(
                  dialog: 'Don\'t have an account?', title: ' Sign Up')),
          const Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }
}

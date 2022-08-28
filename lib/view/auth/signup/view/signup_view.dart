import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/utils/routes/routes.dart';
import 'package:social_media/utils/widgets/auth/auth_passfied/view/auth_passfield.dart';
import 'package:social_media/view/auth/signup/cubit/event/signup_controller.dart';
import 'package:social_media/view/auth/signup/cubit/state/state.dart';
import '../../../../utils/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpCubit(),
      child: Signup(),
    );
  }
}

class Signup extends AppRoutes {
  Signup({super.key});
  final TextEditingController userNameController = TextEditingController();
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
      body: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  const AuthBanner(title: 'Sign Up'),
                  AuthTextField(
                      title: 'username', controller: userNameController),
                  SizedBox(height: size.height / 30),
                  AuthTextField(title: 'email', controller: emailController),
                  SizedBox(height: size.height / 30),
                  AuthPassField(controller: passwordController),
                  const Expanded(child: SizedBox()),
                  InkWell(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      onTap: () {
                        context.read<SignUpCubit>().signUp(
                            name: userNameController.text,
                            email: emailController.text,
                            password: passwordController.text);
                        if (state is ErrorState) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: const Duration(milliseconds: 400),
                              padding: EdgeInsets.all(25.r),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r))),
                              backgroundColor: Colors.red,
                              content: const Text('SignUp failed')));
                        }
                        if (state is DataErroState) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text('Enter Currect Data')));
                        }
                      },
                      child: const AuthButton(title: 'Sign Up')),
                  const Expanded(flex: 1, child: SizedBox()),
                  InkWell(
                      onTap: () => goBack(context),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      child: const AuthDialog(
                          dialog: 'Do you have an account?', title: ' LogIn')),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
              state is LoadingState
                  ? ColoredBox(
                      color: Colors.black45,
                      child: SizedBox(
                        width: size.width * 1,
                        height: size.height * 1,
                        child: Center(
                            child: CupertinoActivityIndicator(
                          color: theme,
                          radius: 20.sp,
                        )),
                      ),
                    )
                  : const SizedBox()
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/utils/themes/app_colors.dart';
import 'package:social_media/utils/widgets/auth/auth_passfied/cubit/cubit_controller.dart';

class AuthPassField extends StatelessWidget {
  const AuthPassField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthPassCubit(),
      child: PassField(controller: controller),
    );
  }
}

class PassField extends AppColors {
  const PassField({required this.controller, Key? key}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: size.width * 0.9,
        height: 73.h,
        child: TextFormField(
          controller: controller,
          obscureText: context.select((AuthPassCubit cubit) => cubit.state),
          style: TextStyle(
              letterSpacing: 4,
              fontFamily: 'MartelSans',
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700),
          decoration: InputDecoration(
            suffix: InkWell(
              onTap: () => context.read<AuthPassCubit>().changeShow(),
              child: Icon(
                context.select((AuthPassCubit cubit) => cubit.state) == true
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.white,
              ),
            ),
            label: Text('password',
                style: TextStyle(
                    letterSpacing: 0,
                    fontSize: 17.sp,
                    fontFamily: 'MartelSans',
                    color: theme)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(width: 2.sp, color: Colors.red)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(width: 2.sp, color: theme)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(width: 2.sp, color: theme)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                borderSide: BorderSide(color: theme)),
          ),
        ),
      ),
    );
  }
}

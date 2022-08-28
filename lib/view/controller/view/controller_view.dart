import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/themes/app_colors.dart';
import '../../pages/home/home.dart';
import '../../pages/message/message.dart';
import '../../pages/profile/profile.dart';
import '../../pages/search/search.dart';
import '../controller.dart';

class Controller extends StatelessWidget {
  const Controller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ControllerCubit(),
      child: ControllerView(),
    );
  }
}

class ControllerView extends AppColors {
  ControllerView({super.key});
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: primary,
          statusBarIconBrightness: Brightness.light,
        ),
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: primary,
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          context.read<ControllerCubit>().changePage(index);
        },
        children: const [HomeView(), Search(), Message(), Profile()],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: SizedBox(
          height: 75.h,
          child: BottomNavigationBar(
            currentIndex:
                context.select((ControllerCubit cubit) => cubit.state),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 27.sp,
            unselectedFontSize: 0,
            selectedFontSize: 0,
            enableFeedback: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: lightPrimary,
            unselectedItemColor: Colors.white,
            selectedItemColor: const Color.fromARGB(255, 255, 234, 48),
            elevation: 0,
            onTap: (index) {
              context.read<ControllerCubit>().changePage(index);
              controller.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: lightPrimary,
                label: '',
                icon: const Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                backgroundColor: lightPrimary,
                label: '',
                icon: const Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                backgroundColor: lightPrimary,
                label: '',
                icon: const Icon(Icons.message),
              ),
              BottomNavigationBarItem(
                backgroundColor: lightPrimary,
                label: '',
                icon: const Icon(Icons.person),
              )
            ],
          ),
        ),
      ),
    );
  }
}

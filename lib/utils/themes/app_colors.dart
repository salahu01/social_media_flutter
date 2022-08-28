import 'package:flutter/material.dart';

abstract class AppColors extends StatelessWidget {
  const AppColors({super.key});

  Color get primary => const Color.fromARGB(255, 31, 33, 40);
  Color get lightPrimary => const Color.fromARGB(255, 46, 49, 59);
  Color get theme => const Color.fromARGB(255, 119, 55, 254);
  Color get extraLight => const Color.fromARGB(255, 125, 125, 125);
  
}

import 'package:adv_flutter_ch6/view/task_1/controller/theme_controller.dart';
import 'package:adv_flutter_ch6/view/task_1/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeController.isDarkMode.value ? ThemeData.dark() : ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}


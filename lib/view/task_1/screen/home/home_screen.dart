import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/theme_controller.dart';
import '../../controller/home_controller.dart';
import '../details/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    final ThemeController themeController = Get.find();

    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Obx(
                            () => Text(
                              homeController.count.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 100),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  homeController.incrementValue();
                                },
                                child: const Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  homeController.zeroValue();
                                },
                                child: const Icon(Icons.restart_alt),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  homeController.removeValue();
                                },
                                child: const Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Theme'),
                  trailing: GestureDetector(
                      onTap: themeController.changeTheme,
                      child: themeController.isDarkMode.value
                          ? const Icon(Icons.dark_mode)
                          : const Icon(Icons.sunny)),
                ),
                ListTile(
                  title: const Text('Set-up Navigation'),
                  trailing: GestureDetector(
                    onTap: () {
                      Get.to(const DetailsScreen(), transition: Transition.fade);
                    },
                    child: const Icon(Icons.arrow_forward),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

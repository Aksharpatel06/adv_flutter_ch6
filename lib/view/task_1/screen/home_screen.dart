import 'package:adv_flutter_ch6/view/task_1/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('getX Counter'),
      ),
      body: Center(
        child: Obx(() => Text("${homeController.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeController.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

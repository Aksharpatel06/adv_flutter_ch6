import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      body: Center(
        child:GestureDetector(onTap: () {
          Get.back();
        },child: const Text('Back Button',style: TextStyle(fontSize: 25),),),
      ),
    );
  }
}

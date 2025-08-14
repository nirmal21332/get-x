import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/slider_controller.dart';
import 'package:getx/screentwo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SliderController controller = Get.put(SliderController());
  double opacity = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            );
          }),
          Obx(() {
            return Slider(
                value: controller.opacity.value,
                onChanged: (val) {
                  controller.setOpacity(val);
                });
          }),
        ],
      ),
    );
  }
}

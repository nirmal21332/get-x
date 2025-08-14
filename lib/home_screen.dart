import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('Hello World');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Notifications'),
              ),
              Obx((){
                return Switch(value:controller.Notification.value, onChanged: (value){
                  controller.switchcase(value);
                });
              })
            ],
          )
        ],
      ),
    );
  }
}

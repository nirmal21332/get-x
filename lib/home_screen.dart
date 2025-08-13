import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/screentwo.dart';

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
      body: Center(
        child:Obx((){
          return Text(controller.count.toString(),style: TextStyle(fontSize: 50),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.Increment();
        },
      ),
    );
  }
}

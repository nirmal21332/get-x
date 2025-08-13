import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screentwo.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        centerTitle: true,
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            Get.toNamed('/screentwo',arguments:[
              'Nirmal',
              'Kamal'
            ]);
          },
          child: Text('Click'),
        ),
      )
    );
  }
}

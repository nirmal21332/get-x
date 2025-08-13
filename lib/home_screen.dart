import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Nirmal', 'Check Plz',
              icon: Icon(Icons.add), barBlur: 20.0);
        },
      ),
      appBar: AppBar(
        title: Text('Get x'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}

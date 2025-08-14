import 'package:flutter/material.dart';
import 'package:get/get.dart';
class secondscreen extends StatefulWidget {
  var name;
  secondscreen({super.key,this.name});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nirmal Sharma'+Get.arguments[1]),
          centerTitle: true,
        ),
        body:Center(
          child: ElevatedButton(
            onPressed: (){
              Get.toNamed('/screentwo');
            },
            child: Text('Click'),
          ),
        )
    );
  }
}


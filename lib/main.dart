import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/screentwo.dart';

import 'languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale:Locale('en','US') ,
      fallbackLocale: Locale('en','US'),
      translations: Language(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      home: HomeScreen(),
    );
  }
}

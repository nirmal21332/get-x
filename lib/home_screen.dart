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
      appBar: AppBar(
        title: Text('Get x'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Click Plz'),
              subtitle: Text('More Info'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Nirmal',
                  middleText: "Follow for more info",
                  contentPadding: EdgeInsets.all(20),
                  confirm: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Cancel')),
                  cancel: ElevatedButton(
                      onPressed: () {

                      },
                      child: Text('Ok')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Theme'),
              subtitle: Text('More Info'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height:600,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){Get.changeTheme(ThemeData.dark());}, child: Text('Dark')),
                        ElevatedButton(onPressed: (){Get.changeTheme(ThemeData.light());}, child: Text('light')),

                      ],
                    ),
                  ),),
                  backgroundColor: Colors.blue.shade200,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

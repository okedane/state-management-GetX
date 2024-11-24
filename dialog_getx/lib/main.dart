import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Get X"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: "hallo",
              content: Text("Hello Word"),
            );
          },
          child: Text("Dialog"),
        ),
      ),
    );
  }
}

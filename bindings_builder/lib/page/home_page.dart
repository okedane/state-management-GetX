import 'package:bindings_builder/controller/counter_controller.dart';
import 'package:bindings_builder/page/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final counter_c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(CounterPage());
          },
          child: Text("Counter"),
        ),
      ),
    );
  }
}

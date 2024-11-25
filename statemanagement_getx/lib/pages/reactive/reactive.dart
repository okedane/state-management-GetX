import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_getx/controller/reactiveController/reactiveController.dart';

class Reactive extends StatelessWidget {
  final dataC = Get.put(Reactivecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ractive Get X"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "${dataC.datapantau.value}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              dataC.dataTambah();
            },
            child: const Text("+++++"),
          ),
        ],
      )),
    );
  }
}

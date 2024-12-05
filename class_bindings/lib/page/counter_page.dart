import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterController countC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${countC.data.value}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => countC.decrement(),
                  child: const Text("decrement"),
                ),
                ElevatedButton(
                  onPressed: () => countC.increment(),
                  child: const Text("Increment"),
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Back"))
          ],
        ),
      ),
    );
  }
}

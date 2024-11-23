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
  final mycontroller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Penggunaan Get X"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text(
                  "${mycontroller.data.value}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    mycontroller.decrement();
                  },
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    mycontroller.increment();
                  },
                  child: const Text("+"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var data = 0.obs;
  increment() {
    data = data + 1;
  }

  decrement() {
    data = data - 1;
  }
}

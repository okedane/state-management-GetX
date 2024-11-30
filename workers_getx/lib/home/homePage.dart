import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workers_getx/controller/homeController.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Workers Get X",
          style: TextStyle(color: Colors.white),
        ),  
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Terjadi perubahan ${homeC.dataPatau}x",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: (value) => homeC.change(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

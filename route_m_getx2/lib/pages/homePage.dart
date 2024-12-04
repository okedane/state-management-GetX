import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/page_satu");
              },
              child: const Text("Page 1"),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/page_dua");
              },
              child: const Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}

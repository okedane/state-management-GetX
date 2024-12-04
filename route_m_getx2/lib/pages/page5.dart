import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 5"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 5"),
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/page_tiga");
              },
              child: const Text("Home Page"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/page_dua");
              },
              child: const Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 3"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 3"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("pages_empat");
              },
              child: const Text("Page 4"),
            ),
          ],
        ),
      ),
    );
  }
}

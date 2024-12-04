import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_m_getx/pages/page5.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 4"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 4"),
            ElevatedButton(
              onPressed: () {
                Get.to(Page5());
              },
              child: const Text("Page 5"),
            ),
          ],
        ),
      ),
    );
  }
}

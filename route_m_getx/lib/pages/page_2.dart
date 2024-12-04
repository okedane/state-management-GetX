import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_m_getx/pages/page_3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 2"),
            ElevatedButton(
              onPressed: () {
                Get.to(Page3());
              },
              child: const Text("Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}

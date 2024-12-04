import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_m_getx/pages/page_4.dart';

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
                Get.to(Page4());
              },
              child: const Text("Page 4"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_m_getx/pages/homePage.dart';
import 'package:route_m_getx/pages/page_2.dart';

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
                Get.offAll(Homepage());
              },
              child: const Text("Home Page"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.offAll( const Page2());
              },
              child: const Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}

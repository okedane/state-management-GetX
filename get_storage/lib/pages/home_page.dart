import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class HomePage extends StatelessWidget {
  LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text("Email : ${loginC.emailC.value}")),
            // Obx(() => Text("Password ${loginC.passwordC.value}")),
            Text("Selamat Datang"),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginC.logout(),
        child: const Icon(Icons.logout_outlined),
      ),
    );
  }
}

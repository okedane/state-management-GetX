import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_getx/controller/simpleController/simpleConroller.dart';

class Simplepage extends StatelessWidget {
  final dataC = Get.put(Simpleconroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Get X"),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Simpleconroller>(
              builder: (controller) => Text(
                "${dataC.pantauData}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                dataC.tambahData();
              },
              child: Text("+++"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                dataC.refreshTampilan();
              },
              child: Text("Done"),
            ),
          ],
        ),
      ),
    );
  }
}

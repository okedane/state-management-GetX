import 'package:dependency_m_getx/controllers/duaController.dart';
import 'package:dependency_m_getx/controllers/satuController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagedua extends StatelessWidget {
  Satucontroller satuC = Get.find();
  Duacontroller duaC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama : ${satuC.data1["nama"]}"),
            Text("Umur : ${satuC.data1["umur"]}"),
            Text("Kuliah : ${duaC.data2["kuliah"]}"),
            Text("Jurusan :${duaC.data2["jurusan"]}"),
          ],
        ),
      ),
    );
  }
}

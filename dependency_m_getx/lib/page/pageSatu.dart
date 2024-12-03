import 'package:dependency_m_getx/controllers/duaController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../page/pageDua.dart';
import '../controllers/satuController.dart';

class Pagesatu extends StatelessWidget {
  final SatuC = Get.put(Satucontroller());
  Duacontroller duaC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Depedency Management Get X"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama : ${SatuC.data1["nama"]}"),
            Text("Umur : ${SatuC.data1["umur"]}"),
            Text("Kuliah : ${duaC.data2["kuliah"]}"),
            Text("Jurusan : ${duaC.data2["jurusan"]}"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pagedua(),
                    ));
              },
              child: const Text("Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}

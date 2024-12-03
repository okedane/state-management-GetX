import 'package:dependency_m_getx/controllers/duaController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page/pageSatu.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   final duaC = Get.lazyPut(() => Duacontroller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Pagesatu(),
    );
  }
}

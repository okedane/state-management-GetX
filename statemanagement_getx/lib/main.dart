import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_getx/pages/reactive/reactive.dart';
import 'package:statemanagement_getx/pages/simple/simplePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Simplepage(),
    );
  }
}

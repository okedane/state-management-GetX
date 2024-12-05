import 'package:class_bindings/bindings/counter_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page/home_page.dart';
import './page/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        GetPage(
          name: "/counter",
          page: () => CounterPage(),
          binding: CounterBindings(),
        ),
      ],
    );
  }
}

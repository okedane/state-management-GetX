import 'package:bindings_builder/controller/counter_controller.dart';
import 'package:bindings_builder/page/counter_page.dart';
import 'package:bindings_builder/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            // binding: BindingsBuilder.put(() => CounterController()),
            bindings: [
              BindingsBuilder.put(() => CounterPage()),
              // dan conuntroller lainnya
            ]),
      ],
    );
  }
}

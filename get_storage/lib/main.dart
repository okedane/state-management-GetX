import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './pages/login_page.dart';
import './pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/login",
          page: () => LoginPage(),
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
      ],
    );
  }
}

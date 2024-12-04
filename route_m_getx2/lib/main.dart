import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_m_getx2/pages/page5.dart';
import 'package:route_m_getx2/pages/page_1.dart';
import 'package:route_m_getx2/pages/page_2.dart';
import 'package:route_m_getx2/pages/page_3.dart';
import 'package:route_m_getx2/pages/page_4.dart';

import './pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Homepage(),
      routes: {
        "pages_empat": (context) => Page4(),
        "pages_lima": (context) => Page5(),
      },
      getPages: [
        GetPage(name: "/home", page: () => Homepage()),
        GetPage(name: "/page_satu", page: () => Page1()),
        GetPage(name: "/page_dua", page: () => Page2()),
        GetPage(name: "/page_tiga", page: () => Page3())
      ],
    );
  }
}

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
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Container(
                height: 300,
                color: Colors.,
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.alarm),
                      title: Text("Alarm"),
                    ),
                    ListTile(
                      leading: Icon(Icons.store),
                      title: Text("Store"),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text("Bottom Shet"),
        ),
      ),
    );
  }
}

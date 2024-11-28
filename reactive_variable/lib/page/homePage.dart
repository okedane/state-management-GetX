import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_variable/controller/homeController.dart';

class Homepage extends StatelessWidget {
  final homeC = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Reactive Variable",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.nilaiInt.value}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.decrementInt(),
                    child: const Text("--"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.incrementInt(),
                    child: const Text("++"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.nilaiString}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.updateString(),
                    child: const Text("update"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.resertString(),
                    child: const Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.nilaiDouble.value}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.decrementDouble(),
                    child: const Text("--"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.incrementDouble(),
                    child: const Text("++"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.nilaiBool.value}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.gantiDataBool(),
                    child: const Text("Ganti Bool"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.nilaiList}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.resetDataList(),
                    child: const Text("Reset"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => homeC.tambahDataList(),
                    child: const Text("Add"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.nilaiSet.value}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => homeC.tambahDataSet(),
                child: const Text("Tambah DataSet"),
              ),
            ],
          ),
          Divider(thickness: 3),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => ListTile(
                    leading: CircleAvatar(
                      child: Text("${homeC.nilaiMap['id']}"),
                    ),
                    title: Text("${homeC.nilaiMap['name']}"),
                    subtitle: Text("${homeC.nilaiMap['umur']} tahun"),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => homeC.gantiNamaMap(),
                child: const Text("Ganti"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

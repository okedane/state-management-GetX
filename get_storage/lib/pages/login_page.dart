import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/login_controller.dart';
import '../pages/home_page.dart';

class LoginPage extends StatelessWidget {
  final box = GetStorage();
  final loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberme") != null) {
      loginC.emailC.text = box.read("dataRememberme")["email"];
      loginC.passwordC.text = box.read("dataRememberme")["password"];
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 10),
          Obx(
            () => TextField(
              controller: loginC.passwordC,
              autocorrect: false,
              obscureText: loginC.isHidden.value,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "password",
                suffixIcon: IconButton(
                  onPressed: () => loginC.isHidden.toggle(),
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
            ),
          ),
          Obx(() => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: loginC.rememberme.value,
                onChanged: (value) {
                  loginC.rememberme.toggle();
                },
                title: const Text("Remember me"),
              )),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () => loginC.login(),
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}

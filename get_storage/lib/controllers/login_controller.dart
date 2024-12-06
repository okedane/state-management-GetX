import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberme = false.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == "admin@gmail.com" && passwordC.text == "admin") {
      if (box.read("dataRememberme") != null) {
        box.remove("dataRememberme");
      }

      if (rememberme.isTrue) {
        box.write(
          "dataRememberme",
          {
            "email": emailC.text,
            "password": passwordC.text,
          },
        );
      }

      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "terjadi Kesalahan",
        middleText: "Email & Password terjadi kesalahan",
      );
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}

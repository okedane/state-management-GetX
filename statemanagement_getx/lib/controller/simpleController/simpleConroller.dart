import 'package:get/get.dart';

class Simpleconroller extends GetxController {
  int pantauData = 0;

  void tambahData() {
    pantauData = pantauData + 1;
  }

  void refreshTampilan() {
    update();
  }
}

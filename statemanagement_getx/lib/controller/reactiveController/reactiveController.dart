import 'package:get/get.dart';

class Reactivecontroller extends GetxController {
  var datapantau = 0.obs;

  dataTambah() {
    datapantau = datapantau + 1;
  }
}

import 'package:get/get.dart';

class CounterController extends GetxController {
  var data = 0.obs;

  void decrement() => data--;
  void increment() => data++;
}

import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}

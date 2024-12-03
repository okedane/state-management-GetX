import 'package:get/get.dart';

class Homecontroller extends GetxController {
  RxInt dataPatau = 0.obs;

  void change() => dataPatau++;

  @override
  void onInit() {
    //Dipatau Terus Menerus
    // ever(
    //   dataPatau,
    //   (callback) => print("Perubahan"),
    // );

    //Dipantau 1x
    // once(
    //   dataPatau,
    //   (callback) => print("DiPatau 1x"),
    // );

    // Diapantau ketika Berhenti diekseskus dan setelah 2 detik di pantau
    // debounce(
    //   dataPatau,
    //   (callback) => ('Pantau mybro'),
    // );

    //Selalu dipatau selama 2 menit
    interval(
      dataPatau,
      (callback) => print("panatu"),
      time: Duration(seconds: 2),
    );
    super.onInit();
  }
}

import 'package:get/get.dart';

class Homecontroller extends GetxController {
  RxInt nilaiInt = 0.obs;
  RxString nilaiString = "Data".obs;
  RxDouble nilaiDouble = 1.1.obs;
  RxBool nilaiBool = false.obs;
  RxList<int> nilaiList = [1, 2, 3].obs;
  RxSet<int> nilaiSet = {1, 2, 3}.obs;

  RxMap<String, dynamic> nilaiMap = <String, dynamic>{
    "id": 1,
    "name": "dhan",
    "umur": 24,
  }.obs;
  int angkaSelanjutnya = 4;

  void gantiNamaMap() {
    nilaiMap['name'] = "egooo";
  }

  void tambahDataSet() {
    nilaiSet.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void tambahDataList() {
    nilaiList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void resetDataList() {
    nilaiList.value = [1, 2, 3].obs;
  }

  void gantiDataBool() {
    nilaiBool.toggle();
  }

  void incrementInt() => nilaiInt++;

  void decrementInt() => nilaiInt--;

  void updateString() {
    nilaiString.value = "Data Update";
  }

  void resertString() {
    nilaiString.value = "Data";
  }

  void incrementDouble() => nilaiDouble.value++;

  void decrementDouble() => nilaiDouble.value--;
}

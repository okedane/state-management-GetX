# Simple State Management

Konsep: Digunakan untuk mengelola state dengan cara sederhana, biasanya dengan mekanisme manual untuk memanggil pembaruan UI (misalnya update()).
Kelebihan: Cocok untuk aplikasi dengan logika sederhana atau bagian kecil aplikasi.
GetBuilder: Dalam kode, menggunakan widget seperti GetBuilder untuk memperbarui tampilan saat state berubah.


# Reactive State Management

Konsep: State dikelola secara reaktif sehingga UI secara otomatis memperbarui jika ada perubahan pada nilai yang diawasi.
Kelebihan: Lebih efisien untuk aplikasi kompleks karena mengurangi pemanggilan manual untuk pembaruan.
Obx: Dalam kode, menggunakan Obx untuk memantau nilai yang bersifat reaktif.
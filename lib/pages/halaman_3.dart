import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/text_controller.dart';
import 'package:myapp/pages/halaman_4.dart';

class HalamanTiga extends StatefulWidget {
  const HalamanTiga({super.key});

  @override
  State<HalamanTiga> createState() => _HalamanTigaState();
}

class _HalamanTigaState extends State<HalamanTiga> {
  final TextController textController = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 100), () {
      Get.snackbar(
        "Selamat Datang",
        "Anda Berhasil Ke Tahap 3",
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Tiga"),
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Konfirmasi Kembali",
              middleText: "Apakah anda yakin untuk ke halaman 1",
              textConfirm: "Ya",
              textCancel: "Tidak",
              onConfirm: () {
                Get.back();
                Get.back(result: "Yah Kamu Kembali!");
              },
              onCancel: () {},
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                textController.text.value,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                textController.text.value = "Wow Kamu Sudah Sampai Sini!";
                textController.toUpper();
              },
              child: const Text(
                "Tekan Ini",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.offAll(const HalamamEmpat());
        },
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/text_controller.dart';

class HalamamEmpat extends StatefulWidget {
  const HalamamEmpat({super.key});

  @override
  State<HalamamEmpat> createState() => _HalamamEmpatState();
}

class _HalamamEmpatState extends State<HalamamEmpat> {
  final TextController textController = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 100), () {
      Get.snackbar("Selamat!!", "Anda Sudah Berhasil Sampai Tahap Akhir!");
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Empat"),
        backgroundColor: Colors.orange,
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
            Container(
              width: 200,
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) {
                  textController.text.value = value;
                },
                decoration: const InputDecoration(
                  hintText: "Masukkan Text Kapital",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                textController.toLower();
              },
              child: const Text(
                "Klik!",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

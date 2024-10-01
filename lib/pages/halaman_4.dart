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
    Future.delayed(Duration(milliseconds: 100), () {
      Get.snackbar("Selamat!!", "Anda Sudah Berhasil Sampai Tahap Akhir!");
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Empat"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                textController.text.value,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              padding: EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) {
                  textController.text.value = value;
                },
                decoration: InputDecoration(
                  hintText: "Masukkan Text Kapital",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                textController.toLower();
              },
              child: Text(
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

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/halaman_1.dart';
import 'package:myapp/pages/halaman_3.dart';

class HalamanDua extends StatefulWidget {
  const HalamanDua({super.key});

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Dua"),
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
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Kembali'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "ini Notifikasi",
                  "Anda Memeiliki 10 Pemeberitahun",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text("Show Notification"),
            ),
            Text(Get.arguments),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(HalamanTiga());
          Future.delayed(Duration(microseconds: 100), () {
            Get.snackbar(
              "Selamat Datang",
              "Anda Berhasil Ke Tahap 3",
            );
          });
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

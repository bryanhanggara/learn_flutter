import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/navigation.dart';
import 'package:myapp/pages/halaman_2.dart';
import 'package:myapp/pages/halaman_3.dart';
import 'package:myapp/pages/halaman_4.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    var test = "".obs;

    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Satu"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  test.value = await Get.to(HalamanDua(),
                      arguments: "Selaamat Andaa Masuk ke Tahap Dua!");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Mulai Petualangan Seru"),
              ),
              Obx(() => Text(test.value)),
            ],
          ),
        ));
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/halaman_1.dart';
import 'package:myapp/pages/halaman_3.dart';

class HalamanDua extends StatefulWidget {
  const HalamanDua({super.key});

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  var page_2 = "".obs;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 100), () {
      Get.snackbar(
        "Selamat Datang",
        "Anda Berhasil Ke Tahap 2",
      );
    });
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
          icon: const Icon(Icons.arrow_back),
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Kembali',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode_outlined),
                        title: const Text("Light Mode"),
                        onTap: () {
                          Get.changeTheme(
                            ThemeData(
                              brightness: Brightness.light,
                              colorScheme: ColorScheme.fromSeed(
                                  seedColor: Colors.deepPurple,
                                  brightness: Brightness.light),
                              textTheme: GoogleFonts.outfitTextTheme().apply(
                                bodyColor: Colors.black,
                                displayColor: Colors.black,
                              ),
                              elevatedButtonTheme: ElevatedButtonThemeData(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                ),
                              ),
                              floatingActionButtonTheme:
                                  const FloatingActionButtonThemeData(
                                backgroundColor: Colors.orange,
                              ),
                            ),
                          );
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark Mode"),
                        onTap: () {
                          Get.changeTheme(
                            ThemeData(
                              brightness: Brightness.dark,
                              colorScheme: ColorScheme.fromSeed(
                                  seedColor: Colors.deepPurple,
                                  brightness: Brightness.dark),
                              textTheme: GoogleFonts.outfitTextTheme().apply(
                                bodyColor: Colors.white,
                                displayColor: Colors.white,
                              ),
                              elevatedButtonTheme: ElevatedButtonThemeData(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                ),
                              ),
                              floatingActionButtonTheme:
                                  const FloatingActionButtonThemeData(
                                backgroundColor: Colors.blueGrey,
                              ),
                            ),
                          );
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Show Notification",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Obx(() => Text(page_2.value)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          page_2.value = await Get.to(const HalamanTiga(), arguments: "");
        },
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

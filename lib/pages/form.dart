import 'package:flutter/material.dart';
import 'package:myapp/components/button.dart';

class FormRecipt extends StatefulWidget {
  const FormRecipt({super.key});

  @override
  State<FormRecipt> createState() => _FormReciptState();
}

class _FormReciptState extends State<FormRecipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "NEW RECIPE",
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Close",
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
           Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 60, 0),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    "Super Cool, Kamu Membuat Resep Makanan Baru. Ayo Mulai!",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    child: Text(
                      "Give your recipe a name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const CustomTextButton(
                  hintText: "Masukkan Nama Resep",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    child: Text(
                      "Estimasi Waktu Memasak (menit)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const CustomTextButton(
                  hintText: "Masukkan Angka (menit)",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    child: Text(
                      "Deskripsi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const Expanded(
                  child: CustomTextButton(
                    hintText: "Masukkan Deskripsi",
                    maxLines: 5,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    child: Text(
                      "Resep, Bahan, dan Langkah",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const Expanded(
                  child: CustomTextButton(
                    hintText: "Masukkan Resep, Bahan, dan Langkah",
                    maxLines: 5,
                  ),
                ),
              ],
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 60, 0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Padding dalam tombol
                    child: Text(
                      "Buat Resep",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

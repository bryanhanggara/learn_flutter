import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference data = firestore.collection('posts');
    return data.orderBy('date', descending: true).snapshots();
  }

  void deleteData(String docID) {
    try {
      Get.defaultDialog(
        title: "Konfirmasi",
        middleText: "Apakah kamu ingin menghapus resep ini",
        confirm: ElevatedButton(
          onPressed: () async {
            await firestore.collection('posts').doc(docID).delete();
            Get.back();
            Get.snackbar("Sukses", "Resep Berhasil dihapus");
          },
          child: Text(
            "Ya",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        cancel: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "Tidak",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.grey,
          ),
        ),
        radius: 10,
      );
    } catch (e) {}
  }
}

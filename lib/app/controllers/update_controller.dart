import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateController extends GetxController {
  late TextEditingController titleController;
  late TextEditingController estTimeController;
  late TextEditingController ingredientsController;
  late TextEditingController descriptionController;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String docID) async {
    DocumentReference docRef = firestore.collection('posts').doc(docID);
    return docRef.get();
  }

  void updateData(String docID, String title, String estTime,
      String ingredients, String description) async {
    try {
      await firestore.collection('posts').doc(docID).update({
        'title': title,
        'estTime': estTime,
        'ingredients': ingredients,
        'description': description,
      });

      Get.back();
      Get.snackbar("Sukses", "Resep diperbarui");
    } catch (e) {
      print(e);
      Get.snackbar("Gagal", "Periksa kembali perubahannya");
    }
  }

  @override
  void onInit() {
    titleController = TextEditingController();
    estTimeController = TextEditingController();
    ingredientsController = TextEditingController();
    descriptionController = TextEditingController();
    super.onInit();
  }


  @override
  void onClose() {
    titleController.dispose();
    estTimeController.dispose();
    ingredientsController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}

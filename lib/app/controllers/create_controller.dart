import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateController extends GetxController {
  late TextEditingController titleController;
  late TextEditingController estTimeController;
  late TextEditingController ingredientsController;
  late TextEditingController descriptionController;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addData(String title, String estTime, String ingredients,
      String description) async {
    try {
      String dateNow = DateTime.now().toString();
      await firestore.collection('posts').add({
        'title': title,
        'estTime': estTime,
        'ingredients': ingredients,
        'description': description,
        'date': dateNow
      });
      Get.back();
      Get.snackbar("Sukses", "Resep Makanan Berhasil Ditambah");
      titleController.clear();
      estTimeController.clear();
      ingredientsController.clear();
      descriptionController.clear();
    } catch (e) {
      print(e);
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

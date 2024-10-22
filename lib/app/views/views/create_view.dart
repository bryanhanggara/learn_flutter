import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/controllers/create_controller.dart';

class CreateView extends GetView<CreateController> {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    final CreateController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Resep'),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: controller.titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Nama Makanan",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: controller.estTimeController,
                  decoration: InputDecoration(
                    hintText: 'Waktu Memasak',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: controller.ingredientsController,
                  decoration: InputDecoration(
                    hintText: 'Resep',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 3,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: controller.descriptionController,
                  decoration: InputDecoration(
                    hintText: 'Cara Memasak',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 3,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.addData(
                    controller.titleController.text,
                    controller.estTimeController.text,
                    controller.ingredientsController.text,
                    controller.descriptionController.text,
                  );
                },
                child: Text('Buat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/login_controller.dart';
import 'package:myapp/app/controllers/register_controller.dart';

class RegisterView extends GetView {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    final RegisterController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Email",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Kata Sandi",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.register(
                    controller.emailController.text,
                    controller.passwordController.text,
                  );
                },
                child: Text("Daftar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

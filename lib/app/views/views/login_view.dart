import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/login_controller.dart';

class LoginView extends GetView {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text('LoginView'),
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
                  controller.login(
                    controller.emailController.text,
                    controller.passwordController.text,
                  );
                },
                child: Text("Masuk"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('/register');
                },
                child: Text("Daftar"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ));
  }
}

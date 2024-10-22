import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CreateView extends GetView {
  const CreateView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HalamanTiga extends StatefulWidget {
  const HalamanTiga({super.key});

  @override
  State<HalamanTiga> createState() => _HalamanTigaState();
}

class _HalamanTigaState extends State<HalamanTiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Tiga"),
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () {
            
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

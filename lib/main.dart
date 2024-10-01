import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/form.dart';
import 'package:myapp/pages/halaman_1.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/new-form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.outfitTextTheme(Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.black, displayColor: Colors.black))),
      home: const HalamanSatu(),
    );
  }
}
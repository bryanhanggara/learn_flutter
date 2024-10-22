import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/app/controllers/login_controller.dart';
import 'package:myapp/app/routes/app_route.dart';
import 'package:myapp/app/views/views/home_view.dart';
import 'package:myapp/app/views/views/loading_view.dart';
import 'package:myapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final authC = Get.put(LoginController(), permanent: true);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot);
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: ThemeMode.system,
            theme: ThemeData(
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.deepPurple, brightness: Brightness.light),
              textTheme: GoogleFonts.outfitTextTheme().apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Colors.orange,
              ),
            ),
            initialRoute:
                snapshot.data != null ? AppRoute.home : AppRoute.login,
            getPages: AppRoute.routes,
          );
        }
        return LoadingView();
      },
    );
  }
}

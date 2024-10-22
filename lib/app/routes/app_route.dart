import 'package:get/get.dart';
import 'package:myapp/app/binding/page_binding.dart';
import 'package:myapp/app/views/views/create_view.dart';
import 'package:myapp/app/views/views/home_view.dart';
import 'package:myapp/app/views/views/login_view.dart';
import 'package:myapp/app/views/views/register_view.dart';

class AppRoute {
  static const String home = '/home';
  static const String createRecipt = '/create-receipt';
  static const String login = '/login';
  static const String register = '/register';

  static final routes = [
    GetPage(
      name: home,
      page: () => HomePage(),
    ),
    GetPage(
      name: createRecipt,
      page: () => CreateView(),
      binding: CreateBinding(),
    ),
    GetPage(
      name: login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: register,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}

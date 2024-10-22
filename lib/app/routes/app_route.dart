import 'package:get/get.dart';
import 'package:myapp/app/binding/page_binding.dart';
import 'package:myapp/app/views/views/create_view.dart';
import 'package:myapp/app/views/views/home_view.dart';

class AppRoute {
  static const String home = '/home';
  static const String createRecipt = '/create-receipt';

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
  ];
}

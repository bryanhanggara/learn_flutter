import 'package:get/get.dart';
import 'package:myapp/app/controllers/create_controller.dart';
import 'package:myapp/app/controllers/home_controller.dart';
import 'package:myapp/app/controllers/login_controller.dart';
import 'package:myapp/app/controllers/register_controller.dart';

class CreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateController>(() => CreateController());
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
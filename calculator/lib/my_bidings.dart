
import 'package:get/instance_manager.dart';
import 'package:s/calculate_controller.dart';
import 'package:s/theme_controllor.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculateController());
    Get.lazyPut(() => ThemeController());
  }
}
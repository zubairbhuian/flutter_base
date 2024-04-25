import 'package:flutter_base/app/services/controller/config_controller.dart';
import 'package:get/get.dart';

class BaseBinding extends Bindings {


  @override
  void dependencies() {
    //Get.lazyPut(() => BaseController());
    // Get.put(
    //   BaseController(apiService: apiService),
    //   permanent: true,
    // );
    Get.put(ConfigController());
  }
}

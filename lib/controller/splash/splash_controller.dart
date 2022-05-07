import 'package:get/get.dart';
import 'package:macbro/base/base_controller.dart';

import '../../routes/app_routes.dart';

class SplashController extends BaseController{

  @override
  Future<void> onInit()async{
    super.onInit();
    await Future.delayed(const Duration(seconds: 2),(){
            Get.offNamed(AppRoutes.main);
    });
  }
}
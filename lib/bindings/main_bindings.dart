import 'package:get/get.dart';
import 'package:macbro/controller/main/main_controller.dart';

import '../controller/main/home/home_controller.dart';
import '../data/provider/api_client.dart';
import '../data/repository/home/home_repository.dart';

class MainBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => MainController(),fenix: true);
   Get.lazyPut<HomeController>(
         () => HomeController(
       repository: HomeRepository(apiClient: ApiClient.getInstance()),
     ),
     fenix: true,
   );

  }

}
import 'package:get/get.dart';
import 'package:macbro/controller/main/home/home_controller.dart';
import 'package:macbro/data/provider/api_client.dart';
import 'package:macbro/data/repository/home/home_repository.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(repository: HomeRepository(apiClient: ApiClient.getInstance())),fenix: true);

  }
}
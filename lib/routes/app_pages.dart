import 'package:get/get.dart';
import 'package:macbro/bindings/main_bindings.dart';
import 'package:macbro/bindings/splash_bindings.dart';
import 'package:macbro/routes/app_routes.dart';
import 'package:macbro/ui/main/main/main_page.dart';
import 'package:macbro/ui/splash/splash_page.dart';

class AppPages{
  static final pages = [
   GetPage(name: AppRoutes.initial, page:()=>const SplashPage(),binding: SplashBindings()),
   GetPage(name: AppRoutes.main, page:()=> MainPage(),binding: MainBindings()),
  ];
}
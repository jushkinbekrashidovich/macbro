import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:macbro/bindings/splash_bindings.dart';
import 'package:macbro/core/constants/constants.dart';
import 'package:macbro/core/theme/app_theme.dart';
import 'package:macbro/routes/app_pages.dart';
import 'package:macbro/routes/app_routes.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: const [GestureType.onTap],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context) => GetMaterialApp(
          title: "Sample",
          navigatorKey: AppConstants.navigatorKey,

          /// theme
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          debugShowCheckedModeBanner: false,

          /// binding
          initialBinding: SplashBindings(),

          /// route
          initialRoute: AppRoutes.initial,
          getPages: AppPages.pages,



          ///
          defaultTransition: Transition.rightToLeft,

          ///
          transitionDuration: const Duration(milliseconds: 100),
        ),
      ),
    );
  }
}

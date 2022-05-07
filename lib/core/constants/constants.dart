import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AppConstants {
  AppConstants._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static const baseUrl = kDebugMode
      ? 'https://api.client.macbro.uz/v1/'
      : 'https://api.client.macbro.uz/v1/';
  static const shipperId = !kDebugMode
      ? 'd4b1658f-3271-4973-8591-98a82939a664'
      : 'e2d30f35-3d1e-4363-8113-9c81fdb2a762';
}

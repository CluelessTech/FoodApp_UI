import 'package:flutter/material.dart';

import '../shared/app_import.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String detailScreen = '/detail_screen';

  static const String checkoutScreen = '/checkout_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => const HomeScreen(),
    detailScreen: (context) => DetailScreen(),
    checkoutScreen: (context) => const CheckoutScreen(),
  };
}

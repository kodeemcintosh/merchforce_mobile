
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:merchforce_mobile/ui/screens/home_screen.dart';
import 'package:merchforce_mobile/ui/screens/merch_details_screen.dart';
import 'package:merchforce_mobile/ui/screens/merch_list_screen.dart';
import 'package:merchforce_mobile/ui/screens/cart_screen.dart';
import 'package:merchforce_mobile/ui/screens/checkout_screen.dart';
import 'package:merchforce_mobile/ui/theme/merchforce_theme.dart';

// set splash screen in V V V V V
//  /android/app/src/main/res/drawable/launch_background.xml
//  /ios/Runner/Assets.xcassets/LaunchImage.imageset/

void main() {
  runApp(MerchforceMobileApp());
}

class MerchforceMobileApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        // '/search': (context) => SearchScreen(),
        '/merch-list': (context) => MerchListScreen(),
        '/merch-details': (context) => MerchDetailsScreen(),
        // '/account': (context) => AccountScreen(),
        '/cart': (context) => CartScreen(),
        '/checkout': (context) => CheckoutScreen(),
      },
      // home: HomeScreen(),

      title: 'Merchforce Demo',
      theme: MerchforceTheme(),
    );
  }
}

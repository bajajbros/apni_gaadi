import 'package:apni_gaadi/presentation/iphone_14_one_screen/iphone_14_one_screen.dart';
import 'package:apni_gaadi/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var navigatorKey = GlobalKey<NavigatorState>();
var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      theme: theme,
      title: 'apni_gaadi',
      debugShowCheckedModeBanner: false,
      home: Iphone14OneScreen(),
    );
  }
}

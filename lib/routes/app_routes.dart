import 'package:flutter/material.dart';
import 'package:apni_gaadi/presentation/iphone_14_two_screen/iphone_14_two_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_three_screen/iphone_14_three_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_four_screen/iphone_14_four_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_five_screen/iphone_14_five_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_six_screen/iphone_14_six_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_seven_screen/iphone_14_seven_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_eight_screen/iphone_14_eight_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_nine_container_screen/iphone_14_nine_container_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_ten_screen/iphone_14_ten_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_eleven_screen/iphone_14_eleven_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twelve_screen/iphone_14_twelve_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_thirteen_screen/iphone_14_thirteen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_sixteen_screen/iphone_14_sixteen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_seventeen_screen/iphone_14_seventeen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_eighteen_screen/iphone_14_eighteen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_nineteen_screen/iphone_14_nineteen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twenty_screen/iphone_14_twenty_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentytwo_screen/iphone_14_twentytwo_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_one_screen/iphone_14_one_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentythree_screen/iphone_14_twentythree_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyfour_screen/iphone_14_twentyfour_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyfive_screen/iphone_14_twentyfive_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyseven_screen/iphone_14_twentyseven_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyeight_screen/iphone_14_twentyeight_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentynine_screen/iphone_14_twentynine_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_thirty_screen/iphone_14_thirty_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_thirtyone_screen/iphone_14_thirtyone_screen.dart';
import 'package:apni_gaadi/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone14TwoScreen = '/iphone_14_two_screen';

  static const String iphone14ThreeScreen = '/iphone_14_three_screen';

  static const String iphone14FourScreen = '/iphone_14_four_screen';

  static const String iphone14FiveScreen = '/iphone_14_five_screen';

  static const String iphone14SixScreen = '/iphone_14_six_screen';

  static const String iphone14SevenScreen = '/iphone_14_seven_screen';

  // static const String iphone14EightScreen = '/iphone_14_eight_screen';

  static const String iphone14NinePage = '/iphone_14_nine_page';

  static const String iphone14NineContainerScreen =
      '/iphone_14_nine_container_screen';

  static const String iphone14TenScreen = '/iphone_14_ten_screen';

  static const String iphone14ElevenScreen = '/iphone_14_eleven_screen';

  // static const String iphone14TwelveScreen = '/iphone_14_twelve_screen';

  static const String iphone14ThirteenScreen = '/iphone_14_thirteen_screen';

  // static const String iphone14FourteenScreen = '/iphone_14_fourteen_screen';

  static const String iphone14SixteenScreen = '/iphone_14_sixteen_screen';

  static const String iphone14SeventeenScreen = '/iphone_14_seventeen_screen';

  static const String iphone14EighteenScreen = '/iphone_14_eighteen_screen';

  static const String iphone14NineteenScreen = '/iphone_14_nineteen_screen';

  // static const String iphone14TwentyScreen = '/iphone_14_twenty_screen';

  static const String iphone14TwentyonePage = '/iphone_14_twentyone_page';

  static const String iphone14TwentytwoScreen = '/iphone_14_twentytwo_screen';

  static const String iphone14OneScreen = '/iphone_14_one_screen';

  static const String iphone14TwentythreeScreen =
      '/iphone_14_twentythree_screen';

  static const String iphone14TwentyfourScreen = '/iphone_14_twentyfour_screen';

  static const String iphone14TwentyfiveScreen = '/iphone_14_twentyfive_screen';

  static const String iphone14TwentysevenScreen =
      '/iphone_14_twentyseven_screen';

  static const String iphone14TwentyeightScreen =
      '/iphone_14_twentyeight_screen';

  static const String iphone14TwentynineScreen = '/iphone_14_twentynine_screen';

  static const String iphone14ThirtyScreen = '/iphone_14_thirty_screen';

  static const String iphone14ThirtyoneScreen = '/iphone_14_thirtyone_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone14TwoScreen: (context) => Iphone14TwoScreen(),
    iphone14ThreeScreen: (context) => Iphone14ThreeScreen(),
    iphone14FourScreen: (context) => Iphone14FourScreen(),
    iphone14FiveScreen: (context) => Iphone14FiveScreen(),
    iphone14SixScreen: (context) => Iphone14SixScreen(),
    // iphone14SevenScreen: (context) => Iphone14SevenScreen(),
    // iphone14EightScreen: (context) => Iphone14EightScreen(),
    iphone14NineContainerScreen: (context) => Iphone14NineContainerScreen(
          phone: "",
        ),
    iphone14TenScreen: (context) => Iphone14TenScreen(),
    iphone14ElevenScreen: (context) => Iphone14ElevenScreen(),
    // iphone14TwelveScreen: (context) => Iphone14TwelveScreen(),
    iphone14ThirteenScreen: (context) => Iphone14ThirteenScreen(),
    // iphone14FourteenScreen: (context) => Iphone14FourteenScreen(),
    iphone14SixteenScreen: (context) => Iphone14SixteenScreen(),
    iphone14SeventeenScreen: (context) => Iphone14SeventeenScreen(),
    iphone14EighteenScreen: (context) => Iphone14EighteenScreen(),
    iphone14NineteenScreen: (context) => Iphone14NineteenScreen(),
    // iphone14TwentyScreen: (context) => Iphone14TwentyScreen(),
    iphone14TwentytwoScreen: (context) => Iphone14TwentytwoScreen(),
    iphone14OneScreen: (context) => Iphone14OneScreen(),
    iphone14TwentythreeScreen: (context) => Iphone14TwentythreeScreen(),
    iphone14TwentyfourScreen: (context) => Iphone14TwentyfourScreen(),
    iphone14TwentyfiveScreen: (context) => Iphone14TwentyfiveScreen(
          phone: "",
        ),
    iphone14TwentysevenScreen: (context) => Iphone14TwentysevenScreen(
          phone: "",
        ),
    iphone14TwentyeightScreen: (context) => Iphone14TwentyeightScreen(),
    iphone14TwentynineScreen: (context) => Iphone14TwentynineScreen(),
    iphone14ThirtyScreen: (context) => Iphone14ThirtyScreen(),
    iphone14ThirtyoneScreen: (context) => Iphone14ThirtyoneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

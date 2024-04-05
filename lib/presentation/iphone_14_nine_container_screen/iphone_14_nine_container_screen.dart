import 'dart:developer';

import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_nine_page/iphone_14_nine_page.dart';
import 'package:apni_gaadi/presentation/iphone_14_ten_screen/iphone_14_ten_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyone_page/iphone_14_twentyone_page.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyseven_screen/iphone_14_twentyseven_screen.dart';
import 'package:apni_gaadi/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14NineContainerScreen extends StatelessWidget {
  final String phone;
  Iphone14NineContainerScreen({Key? key, required this.phone})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.iphone14NinePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      log(type.toString());
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone14NinePage;
      case BottomBarEnum.Search:
        return AppRoutes.iphone14TenScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.iphone14TwentysevenScreen;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone14NinePage:
        return Iphone14NinePage(
          phone: phone,
        );
      case AppRoutes.iphone14TenScreen:
        return Iphone14TenScreen();
      case AppRoutes.iphone14TwentysevenScreen:
        return Iphone14TwentysevenScreen(
          phone: phone,
        );
    }
    return Container();
  }
}

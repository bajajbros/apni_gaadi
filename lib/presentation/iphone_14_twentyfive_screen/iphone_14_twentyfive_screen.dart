import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_nine_page/iphone_14_nine_page.dart';
import 'package:apni_gaadi/presentation/iphone_14_ten_screen/iphone_14_ten_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyone_page/iphone_14_twentyone_page.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyseven_screen/iphone_14_twentyseven_screen.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_subtitle.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_bottom_bar.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14TwentyfiveScreen extends StatelessWidget {
  final String phone;
  Iphone14TwentyfiveScreen({Key? key, required this.phone})
      : super(
          key: key,
        );

  TextEditingController noidaSecTwentyOneController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img71,
                height: 844.v,
                width: 389.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 68.v),
                    _buildAppBar(context),
                    SizedBox(height: 15.v),
                    _buildSeventySeven(context),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "Location Enabled",
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLocation1,
          margin: EdgeInsets.only(
            left: 15.h,
            right: 152.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventySeven(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.fillOnPrimaryContainer1,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 13.v,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Container(
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Container(
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Pari Chowk",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      CustomTextFormField(
                        width: 145.h,
                        controller: noidaSecTwentyOneController,
                        hintText: "Noida Sec 21",
                        hintStyle: theme.textTheme.bodySmall!,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Noida City Center",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Noida Sec 43",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: SizedBox(
                    height: 89.v,
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.v,
                      color: theme.colorScheme.secondaryContainer,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    bottom: 19.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 115.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "Time:",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Text(
                              "31 mins",
                              style: CustomTextStyles.bodyMedium15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 33.v),
                      SizedBox(
                        width: 113.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "Distance:",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Text(
                              "20 kms",
                              style: CustomTextStyles.bodyMedium15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 90.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 70.v,
              width: 114.h,
              margin: EdgeInsets.only(right: 60.h),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCar151x51,
                    height: 51.adaptSize,
                    width: 51.adaptSize,
                    alignment: Alignment.centerLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMdiLocation,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.v),
                      child: SizedBox(
                        child: Divider(
                          color: appTheme.black900,
                          endIndent: 30.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(right: 18.h),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(
                          7.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: SizedBox(
                        height: 28.v,
                        child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: theme.colorScheme.primaryContainer,
                          endIndent: 13.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone14NinePage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.iphone14TwentyonePage;
      default:
        return "/";
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

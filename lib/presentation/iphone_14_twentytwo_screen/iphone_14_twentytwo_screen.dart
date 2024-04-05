import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyfour_screen/iphone_14_twentyfour_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentythree_screen/iphone_14_twentythree_screen.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_title.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class Iphone14TwentytwoScreen extends StatelessWidget {
  const Iphone14TwentytwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 6.v),
                  Text("Expected bill amount",
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 18.v),
                  Text("₹ 120", style: theme.textTheme.displayMedium),
                  SizedBox(height: 21.v),
                  Text("March 21, 2023 at 10:30 am",
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 18.v),
                  Divider(indent: 22.h, endIndent: 22.h),
                  SizedBox(height: 17.v),
                  Text("Ravi", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 11.v),
                  Text("Your driver’s ratings",
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 17.v),
                  Container(
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder60),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse11,
                          height: 105.adaptSize,
                          width: 105.adaptSize,
                          radius: BorderRadius.circular(52.h),
                          alignment: Alignment.center)),
                  SizedBox(height: 20.v),
                  CustomRatingBar(initialRating: 0, itemSize: 25),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      width: 163.h,
                      text: "Initiate a Chat with Ravi ",
                      buttonStyle: CustomButtonStyles.fillLightGreen),
                  SizedBox(height: 22.v),
                  Text("Great driver? Consider giving a tip.",
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 15.v),
                  _buildSixteen(context),
                  SizedBox(height: 19.v),
                  CustomOutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Iphone14TwentyfourScreen();
                        }));
                      },
                      text: "Accept ride",
                      margin: EdgeInsets.only(left: 4.h, right: 5.h)),
                  SizedBox(height: 20.v),
                  Container(
                      height: 9.v,
                      width: 119.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(4.h)))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 112.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Your Ride"));
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 11.v),
          decoration: AppDecoration.fillGray700
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Text("₹ 10", style: theme.textTheme.titleMedium)),
      Container(
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 11.v),
          decoration: AppDecoration.fillGray700
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Text("₹ 15", style: theme.textTheme.titleMedium)),
      Container(
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 11.v),
          decoration: AppDecoration.fillGray700
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Text("₹ 20", style: theme.textTheme.titleMedium))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

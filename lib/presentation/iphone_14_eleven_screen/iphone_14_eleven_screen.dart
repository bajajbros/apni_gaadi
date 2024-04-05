import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_subtitle.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14ElevenScreen extends StatelessWidget {
  const Iphone14ElevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.img71,
                      height: 844.v,
                      width: 389.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10.v),
                          decoration: AppDecoration.fillOnPrimaryContainer1,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 63.v),
                                _buildAppBar(context),
                                SizedBox(height: 65.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCar1,
                                    height: 53.adaptSize,
                                    width: 53.adaptSize,
                                    margin: EdgeInsets.only(left: 70.h)),
                                SizedBox(height: 41.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCar2,
                                    height: 38.adaptSize,
                                    width: 38.adaptSize,
                                    margin: EdgeInsets.only(left: 138.h)),
                                SizedBox(height: 40.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 70.h, right: 46.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCar4,
                                                  height: 53.adaptSize,
                                                  width: 53.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 76.v, bottom: 52.v)),
                                              Container(
                                                  height: 182.adaptSize,
                                                  width: 182.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 37.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgCar3,
                                                            height:
                                                                48.adaptSize,
                                                            width: 48.adaptSize,
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left:
                                                                        16.h)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgCar5,
                                                            height:
                                                                52.adaptSize,
                                                            width: 52.adaptSize,
                                                            alignment: Alignment
                                                                .bottomLeft),
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Container(
                                                                margin: EdgeInsets.only(
                                                                    top: 19.v),
                                                                padding:
                                                                    EdgeInsets.all(
                                                                        50.h),
                                                                decoration: AppDecoration
                                                                    .fillPrimary1
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder65),
                                                                child: Container(
                                                                    margin: EdgeInsets.only(
                                                                        right: 1
                                                                            .h),
                                                                    padding:
                                                                        EdgeInsets.all(9.h),
                                                                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                                                                    child: Container(height: 11.adaptSize, width: 11.adaptSize, decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(5.h), border: Border.all(color: theme.colorScheme.primary, width: 3.h))))))
                                                      ]))
                                            ]))),
                                SizedBox(height: 78.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 83.h, right: 76.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCar7,
                                                  height: 50.adaptSize,
                                                  width: 50.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 5.v)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCar6,
                                                  height: 52.adaptSize,
                                                  width: 52.adaptSize,
                                                  margin:
                                                      EdgeInsets.only(top: 3.v))
                                            ]))),
                                SizedBox(height: 51.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCar8,
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    margin: EdgeInsets.only(left: 83.h)),
                                SizedBox(height: 67.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 9.v,
                                        width: 119.h,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius:
                                                BorderRadius.circular(4.h))))
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 25.v,
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, bottom: 1.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Ride near you"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

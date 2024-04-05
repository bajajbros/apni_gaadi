import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyeight_screen/iphone_14_twentyeight_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyfive_screen/iphone_14_twentyfive_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyseven_screen/iphone_14_twentyseven_screen.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_subtitle.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone14TwentyfourScreen extends StatelessWidget {
  const Iphone14TwentyfourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
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
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  decoration: AppDecoration.fillOnPrimaryContainer1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 58.v),
                      _buildAppBar(context),
                      Spacer(
                        flex: 51,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 45.v,
                          width: 57.h,
                          margin: EdgeInsets.only(left: 113.h),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 9.v,
                                  width: 6.h,
                                  margin: EdgeInsets.only(top: 17.v),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primaryContainer,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.black900,
                                    borderRadius: BorderRadius.circular(
                                      10.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 57.h,
                                  padding: EdgeInsets.all(4.h),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Text(
                                    "Pick-up hear",
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 48,
                      ),
                      _buildSeven(context),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Iphone14TwentyeightScreen();
                          }));
                        },
                        height: 58.v,
                        text: "Confirm Pickup",
                        margin: EdgeInsets.only(
                          left: 40.h,
                          right: 39.h,
                        ),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL15,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                      SizedBox(height: 20.v),
                      Container(
                        height: 9.v,
                        width: 119.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
  Widget _buildSeven(BuildContext context) {
    return Container(
      width: 350.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Confirm your Pickup spot",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 17.v),
          SizedBox(
            width: 197.h,
            child: Divider(),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "Near Pari Chowl",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLocation1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(left: 15.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

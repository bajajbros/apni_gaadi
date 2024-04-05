import 'package:apni_gaadi/chat/chat_screen.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/main.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyone_page/iphone_14_twentyone_page.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentytwo_screen/iphone_14_twentytwo_screen.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_subtitle.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_rating_bar.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14TwentyScreen extends StatelessWidget {
  final String fare;
  final String name;
  final String driverPhone;
  final String userPhone;
  Iphone14TwentyScreen(
      {Key? key,
      required this.fare,
      required this.name,
      required this.driverPhone,
      required this.userPhone})
      : super(
          key: key,
        );

  TextEditingController pariChowkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: mediaQueryData.size.height,
                  width: 389.h,
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
                          padding: EdgeInsets.symmetric(vertical: 68.v),
                          decoration: AppDecoration.fillOnPrimaryContainer1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildAppBar(context),
                              SizedBox(height: 15.v),
                              _buildPariChowk1(context),
                              SizedBox(height: 15.v),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 39.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 384.v),
                      _buildConfirmRide(context),
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
              _buildThirteen(context),
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
  Widget _buildPariChowk(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.h),
      child: CustomTextFormField(
        width: 197.h,
        controller: pariChowkController,
        hintText: "Pari Chowk",
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPariChowk1(BuildContext context) {
    return SizedBox(
      height: 209.v,
      width: 350.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 25.v,
              ),
              decoration: AppDecoration.fillBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 6.v,
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
                          ],
                        ),
                      ),
                      _buildPariChowk(context),
                    ],
                  ),
                  SizedBox(height: 1.v),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 4.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Text(
                          "Noida City Center",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 31.h,
                top: 111.v,
                right: 48.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCar1,
                    height: 53.adaptSize,
                    width: 53.adaptSize,
                    margin: EdgeInsets.only(
                      top: 16.v,
                      bottom: 27.v,
                    ),
                  ),
                  SizedBox(
                    height: 98.v,
                    width: 102.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCar245x45,
                          height: 45.adaptSize,
                          width: 45.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 3.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCar352x52,
                          height: 52.adaptSize,
                          width: 52.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 17.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCar453x53,
                          height: 53.adaptSize,
                          width: 53.adaptSize,
                          alignment: Alignment.bottomLeft,
                        ),
                      ],
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
  Widget _buildConfirmRide(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iphone14TwentytwoScreen();
        }));
      },
      text: "Confirm ride",
    );
  }

  /// Section Widget
  // Widget _buildSelectSheet(BuildContext context) {
  //   return CustomElevatedButton(
  //     width: 83.h,
  //     text: "Select Sheet",
  //   );
  // }

  /// Section Widget
  Widget _buildChat(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) {
          return ChatScreen(
              chatName: name,
              onlineStatus: "",
              number: userPhone,
              chatNumber: driverPhone);
        }));
      },
      width: 83.h,
      text: "Chat",
      margin: EdgeInsets.only(
        top: 12.v,
        bottom: 20.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 127.v),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillGray80002,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img81,
                        height: 72.v,
                        width: 129.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 11.v),
                      Row(
                        children: [
                          Text(
                            "Apni Gaadi",
                            style: theme.textTheme.titleMedium,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 28.h,
                              top: 6.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "(Capacity-3)",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "7:38 pm drop off",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 57.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // _buildSelectSheet(context),
                        SizedBox(height: 10.v),
                        Text(
                          "₹ $fare.00",
                          style: CustomTextStyles.titleMediumOnError,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.v),
            Divider(
              color: theme.colorScheme.primary,
            ),
            SizedBox(height: 13.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "Driver’s details",
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "Reaching in 6 mins",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse10,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                    margin: EdgeInsets.only(bottom: 12.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "$name",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        CustomRatingBar(
                          initialRating: 0,
                        ),
                        SizedBox(height: 9.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTdesignCall1,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "$driverPhone",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  _buildChat(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

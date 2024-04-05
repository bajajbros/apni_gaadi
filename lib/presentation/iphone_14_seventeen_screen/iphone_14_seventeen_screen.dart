import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_subtitle.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14SeventeenScreen extends StatelessWidget {
  Iphone14SeventeenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController botanicalGardensController = TextEditingController();

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
                    Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: 767.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildBotanicalGardens(context),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 41.v),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 135.h,
                                    vertical: 10.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBL40,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 490.v),
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
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      51.h, 111.v, 68.h, 557.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              imagePath:
                                                  ImageConstant.imgCar245x45,
                                              height: 45.adaptSize,
                                              width: 45.adaptSize,
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  EdgeInsets.only(left: 3.h),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCar352x52,
                                              height: 52.adaptSize,
                                              width: 52.adaptSize,
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(top: 17.v),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCar453x53,
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
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildThirteen(context),
                                    SizedBox(height: 20.v),
                                    _buildView(context),
                                    SizedBox(height: 40.v),
                                    CustomOutlinedButton(
                                      text: "Select ride",
                                      margin: EdgeInsets.only(
                                        left: 40.h,
                                        right: 39.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
  Widget _buildBotanicalGardens(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        decoration: AppDecoration.fillOnPrimaryContainer1,
        child: Container(
          width: 350.h,
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
              Padding(
                padding: EdgeInsets.only(right: 93.h),
                child: Row(
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
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: CustomTextFormField(
                          controller: botanicalGardensController,
                          hintText: "Botanical Gardens ",
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                        ),
                      ),
                    ),
                  ],
                ),
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
              SizedBox(height: 6.v),
              Row(
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 3.v,
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
                      "Pari Chock",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray5001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img81,
                    height: 40.v,
                    width: 72.h,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Spacer(
                    flex: 58,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 83.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "Recommended",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "Capacity-3",
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 41,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "₹ 100-500",
                      style: CustomTextStyles.titleSmallOnError,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img09LeftChevronOnprimarycontainer,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      top: 22.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Apni Gaadi",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 48.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "7:38 pm 6 mins away",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 295.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 128.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillGray5001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 19.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img91,
                          height: 42.v,
                          width: 63.h,
                          margin: EdgeInsets.only(bottom: 5.v),
                        ),
                        Spacer(
                          flex: 53,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 34.v),
                          child: Text(
                            "Capacity-4",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Spacer(
                          flex: 46,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 25.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "₹ 100.00",
                            style: CustomTextStyles.titleSmallOnError,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "Apni Rikshaw",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 40.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "7:38 pm 5 mins away",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 34.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillGray5001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 14.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img111,
                          height: 42.v,
                          width: 63.h,
                          margin: EdgeInsets.only(bottom: 5.v),
                        ),
                        Spacer(
                          flex: 54,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 34.v),
                          child: Text(
                            "Capacity-3",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Spacer(
                          flex: 45,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 25.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "₹ 110.00",
                            style: CustomTextStyles.titleSmallOnError,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Apni Auto",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 51.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "7:38 pm 6 mins away",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
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
                horizontal: 34.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillGray5001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img101,
                          height: 38.v,
                          width: 60.h,
                          margin: EdgeInsets.only(bottom: 9.v),
                        ),
                        Spacer(
                          flex: 55,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 34.v),
                          child: Text(
                            "Capacity-1",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Spacer(
                          flex: 44,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 25.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "₹ 100.00",
                            style: CustomTextStyles.titleSmallOnError,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Apni Bike",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 52.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "7:38 pm 6 mins away",
                            style: theme.textTheme.bodySmall,
                          ),
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
}

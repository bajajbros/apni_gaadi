import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14ThirteenScreen extends StatelessWidget {
  Iphone14ThirteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController locationController = TextEditingController();

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
                child: Container(
                  decoration: AppDecoration.fillOnPrimaryContainer1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildFiftyTwo(context),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "Enable Location",
                                  style: CustomTextStyles.titleLargeBlack900,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgLocation1,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                margin: EdgeInsets.only(left: 15.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildSeven(context),
                      SizedBox(height: 10.v),
                      _buildEight(context),
                      SizedBox(height: 10.v),
                      _buildNine(context),
                      SizedBox(height: 51.v),
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
                      SizedBox(height: 10.v),
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
  Widget _buildFiftyTwo(BuildContext context) {
    return Container(
      width: 389.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillBlack900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 43.v),
          Text(
            "Choose your Share ride",
            style: CustomTextStyles.titleLargeMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 26.v,
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
            padding: EdgeInsets.only(right: 21.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    bottom: 8.v,
                  ),
                  child: CustomTextFormField(
                    width: 197.h,
                    controller: locationController,
                    hintText: "Enter Pickup location",
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgPhRepeatFill,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 25.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Where to?",
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
      width: 350.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Choose last location",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocation1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 4.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "Parichock To Botanical Gardens",
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 37.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocation1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(bottom: 29.v),
                ),
                Expanded(
                  child: Container(
                    width: 233.h,
                    margin: EdgeInsets.only(
                      left: 15.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "Galgotia University To Bontanical \nGardens",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocation1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(bottom: 29.v),
                ),
                Expanded(
                  child: Container(
                    width: 224.h,
                    margin: EdgeInsets.only(
                      left: 15.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "Sharda University To Bontanical\nGardens",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 41.h),
            child: _buildLocationNine(
              context,
              messageText: "Galgotia University To Parichock",
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 41.h),
            child: _buildLocationNine(
              context,
              messageText: "Alpha 2 Main Market To Galgotia \nUniversity",
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Select Sheet",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "There are 4 sheet",
              style: CustomTextStyles.labelMediumMedium,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlusButton1,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 5.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "1",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlusButton11,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  width: 83.h,
                  text: "Start ride",
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLocationNine(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLocation1,
          height: 30.adaptSize,
          width: 30.adaptSize,
          margin: EdgeInsets.only(bottom: 29.v),
        ),
        Expanded(
          child: Container(
            width: 230.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 4.v,
            ),
            child: Text(
              messageText,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBlack900.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

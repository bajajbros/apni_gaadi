import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/main.dart';
import 'package:apni_gaadi/presentation/iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14TwelveScreen extends StatelessWidget {
  final String phone;
  Iphone14TwelveScreen({Key? key, required this.phone})
      : super(
          key: key,
        );

  TextEditingController locationController = TextEditingController();
  TextEditingController location2Controller = TextEditingController();

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
                      _buildEight(context),
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
                      _buildEight1(context),
                      Spacer(),
                      SizedBox(height: 10.v),
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
  Widget _buildEight(BuildContext context) {
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
            "Choose your Individual ride",
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
            padding: EdgeInsets.only(right: 27.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
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
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: CustomTextFormField(
                    textStyle: TextStyle(color: Colors.white),
                    width: 197.h,
                    controller: locationController,
                    hintText: "Enter Pickup location",
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    navigatorKey.currentState!
                        .push(MaterialPageRoute(builder: (context) {
                      return Iphone14FourteenScreen(
                        phone: phone,
                        pickup: locationController.text,
                        drop: location2Controller.text,
                      );
                    }));
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.img09LeftChevronOnprimarycontainer,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(bottom: 15.v),
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
                padding: EdgeInsets.only(left: 14.h),
                child: CustomTextFormField(
                  textStyle: TextStyle(color: Colors.white),
                  width: 197.h,
                  controller: location2Controller,
                  hintText: "Where to?",
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight1(BuildContext context) {
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
          Row(
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
                  "Pari Chowk",
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 48.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocation1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "Yatharth Hospital Sec 24 Noida",
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          _buildLocationNine(
            context,
            locationText: "Noida City Center",
          ),
          SizedBox(height: 10.v),
          Row(
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
                  "Jamia Millia",
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          _buildLocationTen(
            context,
            locationText: "Varun Hospital Sec 30",
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLocation1,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 6.v,
                  bottom: 4.v,
                ),
                child: Text(
                  "Azadpur, Old Delhi",
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          _buildLocationNine(
            context,
            locationText: "Noida City Center",
          ),
          SizedBox(height: 10.v),
          _buildLocationTen(
            context,
            locationText: "Varun Hospital Sec 30",
          ),
          SizedBox(height: 23.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLocationNine(
    BuildContext context, {
    required String locationText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLocation1,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 6.v,
            bottom: 4.v,
          ),
          child: Text(
            locationText,
            style: CustomTextStyles.bodyMediumBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildLocationTen(
    BuildContext context, {
    required String locationText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLocation1,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 6.v,
            bottom: 4.v,
          ),
          child: Text(
            locationText,
            style: CustomTextStyles.bodyMediumBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}

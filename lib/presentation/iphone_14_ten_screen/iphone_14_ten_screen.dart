import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_eleven_screen/iphone_14_eleven_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_thirteen_screen/iphone_14_thirteen_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twelve_screen/iphone_14_twelve_screen.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_subtitle.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14TenScreen extends StatelessWidget {
  Iphone14TenScreen({Key? key})
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
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  decoration: AppDecoration.fillOnPrimaryContainer1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 58.v),
                      _buildAppBar(context),
                      SizedBox(height: 15.v),
                      _buildSeven(context),
                      Spacer(),
                      CustomOutlinedButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return Iphone14FourteenScreen();
                          // }));
                        },
                        text: "Search Now",
                        margin: EdgeInsets.only(
                          left: 40.h,
                          right: 39.h,
                        ),
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
        text: "Enable Location",
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLocation1,
          margin: EdgeInsets.only(
            left: 15.h,
            right: 164.h,
          ),
        ),
      ],
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
                    width: 197.h,
                    controller: locationController,
                    hintText: "Enter Pickup location",
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.img09LeftChevronOnprimarycontainer,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(bottom: 15.v),
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
                  width: 197.h,
                  controller: locationController,
                  hintText: "Enter Drop Location",
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 38.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLocation1,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  top: 6.v,
                ),
                child: Text(
                  "Set location on map",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 92.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocation1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "Choose last location",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}

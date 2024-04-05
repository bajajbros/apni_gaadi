import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_title.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14TwentythreeScreen extends StatelessWidget {
  Iphone14TwentythreeScreen({Key? key}) : super(key: key);

  TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 2.v),
                  Expanded(
                      child: Container(
                          margin: EdgeInsets.only(right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 22.v),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("Today", style: theme.textTheme.bodyLarge),
                            SizedBox(height: 22.v),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.h, vertical: 21.v),
                                          decoration: AppDecoration
                                              .fillGray80001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL20),
                                          child: Text(
                                              "in how much time you will arrive?",
                                              style: CustomTextStyles
                                                  .bodyMedium15)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h, top: 49.v),
                                          child: Text("3:15 pm",
                                              style: theme.textTheme.bodySmall))
                                    ])),
                            SizedBox(height: 15.v),
                            Padding(
                                padding: EdgeInsets.only(right: 8.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 49.v, bottom: 1.v),
                                          child: Text("3:18 pm",
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: CustomTextFormField(
                                                  controller: timeController,
                                                  hintText:
                                                      "On my way in 5 mins",
                                                  hintStyle: CustomTextStyles
                                                      .bodyMedium15,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 18.h,
                                                          vertical: 22.v),
                                                  // borderDecoration:
                                                  //     TextFormFieldStyleHelper
                                                  //         .fillPrimary,
                                                  filled: true,
                                                  fillColor: theme
                                                      .colorScheme.primary)))
                                    ])),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 19.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 9.v, bottom: 7.v),
                                          child: Text("Type a message",
                                              style: CustomTextStyles
                                                  .bodyMedium15)),
                                      CustomElevatedButton(
                                          width: 83.h,
                                          text: "Send",
                                          rightIcon: Container(
                                              margin:
                                                  EdgeInsets.only(left: 9.h),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTablersend,
                                                  height: 15.adaptSize,
                                                  width: 15.adaptSize)),
                                          buttonStyle:
                                              CustomButtonStyles.fillLightGreen)
                                    ]))
                          ]))),
                  SizedBox(height: 73.v),
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
        height: 115.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(children: [
              SizedBox(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  child: Stack(alignment: Alignment.topRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse1040x40,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(20.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            margin: EdgeInsets.only(
                                left: 28.h, right: 5.h, bottom: 33.v),
                            decoration: BoxDecoration(
                                color: appTheme.green500,
                                borderRadius: BorderRadius.circular(3.h),
                                border: Border.all(
                                    color: appTheme.black900, width: 1.h))))
                  ])),
              AppbarTitle(
                  text: "Chat with Ravi",
                  margin: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 10.v))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

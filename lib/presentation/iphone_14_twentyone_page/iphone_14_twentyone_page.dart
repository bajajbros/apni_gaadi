import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class Iphone14TwentyonePage extends StatelessWidget {
  const Iphone14TwentyonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 780.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.img71,
                      height: 844.v,
                      width: 389.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                            margin: EdgeInsets.only(left: 1.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 67.v),
                            decoration: AppDecoration.fillOnPrimaryContainer1,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 1.h, right: 80.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowLeft,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 6.v),
                                            onTap: () {
                                              onTapImgArrowLeft(context);
                                            }),
                                        Expanded(
                                            child: CustomElevatedButton(
                                                text: "Car ride OTP",
                                                margin:
                                                    EdgeInsets.only(left: 55.h),
                                                buttonStyle:
                                                    CustomButtonStyles.fillGray,
                                                buttonTextStyle: theme
                                                    .textTheme.titleSmall!))
                                      ])),
                                  SizedBox(height: 15.v),
                                  _buildOtpView(context),
                                  SizedBox(height: 40.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCar3,
                                      height: 48.adaptSize,
                                      width: 48.adaptSize,
                                      alignment: Alignment.center),
                                  SizedBox(height: 28.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 50.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCar4,
                                                height: 53.adaptSize,
                                                width: 53.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 52.v)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCar5,
                                                height: 52.adaptSize,
                                                width: 52.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 37.h, top: 53.v))
                                          ])),
                                  SizedBox(height: 78.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 63.h, right: 57.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                    margin: EdgeInsets.only(
                                                        top: 3.v))
                                              ]))),
                                  SizedBox(height: 51.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCar8,
                                      height: 50.adaptSize,
                                      width: 50.adaptSize,
                                      margin: EdgeInsets.only(left: 63.h)),
                                  SizedBox(height: 19.v)
                                ]))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildOtpView(BuildContext context) {
    return Container(
        height: 179.v,
        width: 350.h,
        margin: EdgeInsets.only(left: 1.h),
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCar1,
              height: 53.adaptSize,
              width: 53.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 49.h, top: 46.v)),
          CustomImageView(
              imagePath: ImageConstant.imgCar2,
              height: 38.adaptSize,
              width: 38.adaptSize,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 117.h)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 38.h, vertical: 21.v),
                  decoration: AppDecoration.fillBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: CustomPinCodeTextField(
                            context: context, onChanged: (value) {})),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(width: 83.h, text: "Start ride")
                  ])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

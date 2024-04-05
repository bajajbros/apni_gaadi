import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_title.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14ThirtyScreen extends StatelessWidget {
  Iphone14ThirtyScreen({Key? key}) : super(key: key);

  TextEditingController noidaSecTwentyOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 3.v),
                child: Column(children: [
                  _buildNoidaSecTwentyOne(context),
                  SizedBox(height: 10.v),
                  _buildEight(context),
                  SizedBox(height: 10.v),
                  _buildNine(context),
                  SizedBox(height: 10.v),
                  _buildTen(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildEleven(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 91.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Trip Details"));
  }

  /// Section Widget
  Widget _buildNoidaSecTwentyOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
        decoration: AppDecoration.fillBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 13.v),
              child: Column(children: [
                Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    decoration: BoxDecoration(
                        color: appTheme.red700,
                        borderRadius: BorderRadius.circular(8.h))),
                SizedBox(height: 8.v),
                Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    decoration: BoxDecoration(
                        color: appTheme.red700,
                        borderRadius: BorderRadius.circular(3.h))),
                SizedBox(height: 7.v),
                Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    decoration: BoxDecoration(
                        color: appTheme.red700,
                        borderRadius: BorderRadius.circular(3.h))),
                SizedBox(height: 9.v),
                Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    decoration: BoxDecoration(
                        color: appTheme.red700,
                        borderRadius: BorderRadius.circular(8.h)))
              ])),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("Pari Chowk",
                                style: theme.textTheme.titleSmall)),
                        SizedBox(height: 1.v),
                        CustomTextFormField(
                            controller: noidaSecTwentyOneController,
                            hintText: "Noida Sec 21",
                            hintStyle: theme.textTheme.bodySmall!,
                            textInputAction: TextInputAction.done,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 5.h)),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("Noida City Center",
                                style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("Noida Sec 43",
                                style: theme.textTheme.bodySmall))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
        decoration: AppDecoration.fillGray80001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 3.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Time:", style: theme.textTheme.bodySmall),
                Spacer(flex: 51),
                Text("Price:", style: theme.textTheme.bodySmall),
                Spacer(flex: 48),
                Text("Distance:", style: theme.textTheme.bodySmall)
              ])),
          SizedBox(height: 8.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("31 mins", style: theme.textTheme.titleSmall),
            Spacer(flex: 47),
            Text("₹ 120", style: theme.textTheme.titleSmall),
            Spacer(flex: 52),
            Text("20 km", style: theme.textTheme.titleSmall)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.fillGray80001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildServiceType(context,
              serviceType: "Date & Time", sedan: "16 Jan’23 at 3:32 pm"),
          SizedBox(height: 17.v),
          _buildServiceType(context,
              serviceType: "Service Type", sedan: "Sedan"),
          SizedBox(height: 17.v),
          _buildServiceType(context, serviceType: "Trip Type", sedan: "Normal")
        ]));
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
        decoration: AppDecoration.fillGray80001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildServiceType(context, serviceType: "Total fare", sedan: "₹ 120"),
          SizedBox(height: 18.v),
          _buildServiceType(context,
              serviceType: "Driver’s fare", sedan: "₹ 70"),
          SizedBox(height: 18.v),
          _buildServiceType(context,
              serviceType: "Toll Refund Recieved", sedan: "₹ 0"),
          SizedBox(height: 19.v),
          _buildServiceType(context,
              serviceType: "Paid To ApniGaadi", sedan: "₹ 40"),
          SizedBox(height: 17.v),
          _buildServiceType(context,
              serviceType: "Payment To Third Parties", sedan: "₹ 10")
        ]));
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 40.h, right: 179.h, bottom: 22.v),
        decoration: AppDecoration.fillGray80001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Driver Details", style: CustomTextStyles.bodyMedium15),
              Padding(
                  padding: EdgeInsets.only(top: 15.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse1150x50,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            radius: BorderRadius.circular(25.h)),
                        Padding(
                            padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Ravi",
                                      style: CustomTextStyles.labelLarge13_1),
                                  Padding(
                                      padding: EdgeInsets.only(top: 9.v),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgTdesignCall1,
                                            height: 15.adaptSize,
                                            width: 15.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("9528285215",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ]))
                                ]))
                      ]))
            ]));
  }

  /// Common widget
  Widget _buildServiceType(
    BuildContext context, {
    required String serviceType,
    required String sedan,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(serviceType,
              style: CustomTextStyles.bodyMedium15.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))),
      Text(sedan,
          style: CustomTextStyles.bodyMedium15.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

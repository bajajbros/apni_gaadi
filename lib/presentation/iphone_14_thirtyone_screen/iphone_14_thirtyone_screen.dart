import '../iphone_14_thirtyone_screen/widgets/ravi_item_widget.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_title.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14ThirtyoneScreen extends StatelessWidget {
  const Iphone14ThirtyoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 729.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 9.v,
                          width: 119.h,
                          margin: EdgeInsets.only(bottom: 10.v),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(4.h)))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(
                              top: 12.v, right: 1.h, bottom: 92.v),
                          padding: EdgeInsets.all(20.h),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSearchGray50,
                                    height: 25.adaptSize,
                                    width: 25.adaptSize,
                                    margin: EdgeInsets.only(bottom: 560.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.h, top: 2.v, bottom: 563.v),
                                    child: Text("Search...",
                                        style:
                                            CustomTextStyles.bodyMediumGray500))
                              ]))),
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildRavi1(context),
                                    SizedBox(height: 81.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse1240x40,
                                                  height: 40.adaptSize,
                                                  width: 40.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      20.h)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20.h, top: 22.v),
                                                  child: Text("some text here",
                                                      style: CustomTextStyles
                                                          .bodyMediumLight_1))
                                            ]))),
                                    SizedBox(height: 14.v),
                                    Divider(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1)),
                                    SizedBox(height: 13.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, right: 20.h),
                                        child: _buildRavi(context,
                                            userName: "Lavish",
                                            time: "7:12 pm",
                                            text: "some text here")),
                                    SizedBox(height: 14.v),
                                    Divider(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1)),
                                    SizedBox(height: 13.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, right: 20.h),
                                        child: _buildRavi(context,
                                            userName: "Ravi",
                                            time: "7:12 pm",
                                            text: "some text here")),
                                    SizedBox(height: 14.v),
                                    Divider(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1)),
                                    SizedBox(height: 13.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, right: 20.h),
                                        child: _buildRavi(context,
                                            userName: "Pranay",
                                            time: "7:12 pm",
                                            text: "some text here")),
                                    SizedBox(height: 14.v),
                                    Divider(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1)),
                                    SizedBox(height: 13.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, right: 20.h),
                                        child: _buildRavi(context,
                                            userName: "Manas",
                                            time: "7:12 pm",
                                            text: "some text here")),
                                    SizedBox(height: 14.v),
                                    Divider(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1)),
                                    SizedBox(height: 13.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, right: 20.h),
                                        child: _buildRavi(context,
                                            userName: "Ravi",
                                            time: "7:12 pm",
                                            text: "some text here")),
                                    SizedBox(height: 14.v),
                                    Divider(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1))
                                  ]))))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 114.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Messages"));
  }

  /// Section Widget
  Widget _buildRavi1(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0.v),
                  child: SizedBox(
                      width: 343.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1))));
            },
            itemCount: 8,
            itemBuilder: (context, index) {
              return RaviItemWidget();
            }));
  }

  /// Common widget
  Widget _buildRavi(
    BuildContext context, {
    required String userName,
    required String time,
    required String text,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse122,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h)),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(userName,
                              style: theme.textTheme.titleSmall!.copyWith(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(1))),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              child: Text(time,
                                  style: CustomTextStyles.bodySmallLight
                                      .copyWith(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1))))
                        ]),
                    SizedBox(height: 2.v),
                    Text(text,
                        style: CustomTextStyles.bodyMediumLight_1.copyWith(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1)))
                  ])))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

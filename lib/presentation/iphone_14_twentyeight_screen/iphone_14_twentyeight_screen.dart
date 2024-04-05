import 'package:apni_gaadi/chat/add_bank.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentynine_screen/iphone_14_twentynine_screen.dart';

import '../iphone_14_twentyeight_screen/widgets/upi_item_widget.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_title.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone14TwentyeightScreen extends StatelessWidget {
  const Iphone14TwentyeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 10.v),
                child: Column(children: [
                  _buildNinetyOne(context),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Other Payments methods",
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 17.v),
                  _buildUpi(context),
                  SizedBox(height: 25.v),
                  CustomElevatedButton(
                      width: 78.h,
                      text: "Help",
                      buttonStyle: CustomButtonStyles.fillLightGreenTL8,
                      alignment: Alignment.centerLeft),
                  Spacer(),
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
        height: 114.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "My Account wallet"));
  }

  /// Section Widget
  Widget _buildNinetyOne(BuildContext context) {
    return Container(
        width: 336.h,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Balance", style: theme.textTheme.titleSmall),
              SizedBox(height: 15.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "₹ ",
                        style: CustomTextStyles.titleLargeOnError_1),
                    TextSpan(text: "0", style: theme.textTheme.titleLarge)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 12.v),
              SizedBox(
                  width: 187.h,
                  child: Text(
                      "Add the bank account where you want to receive payments",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium15)),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MagicCoinsRedeemScreen(
                        email: "",
                      );
                    }));
                  },
                  width: 163.h,
                  text: "Add bank account",
                  buttonStyle: CustomButtonStyles.fillLightGreenTL8)
            ]));
  }

  /// Section Widget
  Widget _buildUpi(BuildContext context) {
    return SizedBox(
        height: 127.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 12.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return UpiItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

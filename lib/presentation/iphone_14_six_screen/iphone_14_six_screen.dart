import 'dart:convert';

import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_seven_screen/iphone_14_seven_screen.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Iphone14SixScreen extends StatelessWidget {
  // final String? name;
  final bool login;
  Iphone14SixScreen({
    Key? key,
    this.login = false,
  }) : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void sendOTP(context) async {
    String url =
        "https://2factor.in/API/V1/d95d758b-92a4-11ed-9158-0200cd936042/SMS/+91${mobileNumberController.text}/AUTOGEN2/OTP1";
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        String otp = data['OTP'];
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iphone14SevenScreen(
            otp: otp,
            phone: mobileNumberController.text,
          );
        }));
      } else {
        // Handle error
        print('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle error
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildFiftyOne(context),
                SizedBox(height: 16.v),
                Text(
                  "Confirm your Indentity",
                  style: theme.textTheme.titleLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 27.v),
                _buildNameRow(context),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  width: 330.h,
                  controller: mobileNumberController,
                  hintText: "Mobile number",
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 182.h,
                    margin: EdgeInsets.only(left: 53.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By continuing, I confirm I have read the ",
                            style: CustomTextStyles.bodyMediumLight,
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: CustomTextStyles.labelLargeLightgreenA70001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                CustomOutlinedButton(
                  onPressed: login
                      ? () {
                          ApiMethods.login(context,
                              name: nameController.text +
                                  "" +
                                  lastNameController.text,
                              mobile: mobileNumberController.text,
                              status: "User");
                        }
                      : () {
                          sendOTP(context);
                        },
                  text: "Next",
                  margin: EdgeInsets.only(
                    left: 39.h,
                    right: 40.h,
                  ),
                ),
                SizedBox(height: 31.v),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 60.v,
      ),
      decoration: AppDecoration.gradientCyanToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 90.v),
          CustomImageView(
            imagePath: ImageConstant.img21,
            height: 73.v,
            width: 267.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            width: 165.h,
            controller: nameController,
            hintText: "First Name",
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomTextFormField(
              width: 165.h,
              controller: lastNameController,
              hintText: "Last Name",
              textInputAction: TextInputAction.done,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIndiaOneRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 88.h,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.outlineOnPrimaryContainer2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIndia1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorGray500,
                  height: 4.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    bottom: 12.v,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 11.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer2.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                children: [
                  Text(
                    "+91",
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Text(
                      "Mobile Number",
                      style: CustomTextStyles.bodyMediumGray500,
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

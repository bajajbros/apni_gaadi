import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_five_screen/iphone_14_five_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_seven_screen/iphone_14_seven_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_six_screen/iphone_14_six_screen.dart';
import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14FourScreen extends StatelessWidget {
  const Iphone14FourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwentyOne(context),
              SizedBox(height: 50.v),
              _buildSignUpWithGoogle(context),
              SizedBox(height: 20.v),
              _buildSignUpWithFacebook(context),
              SizedBox(height: 20.v),
              _buildLogin(context),
              SizedBox(height: 31.v),
              Text(
                "or",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 14.v),
              _buildCreateAccount(context),
              SizedBox(height: 14.v),
              // _buildLogin(context),
              SizedBox(height: 30.v),
              SizedBox(
                width: 254.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By creating an account, you agree to your ",
                        style: CustomTextStyles.bodyMediumLight,
                      ),
                      TextSpan(
                        text: "Term of service ",
                        style: CustomTextStyles.labelLarge13,
                      ),
                      TextSpan(
                        text: "and",
                        style: CustomTextStyles.bodyMediumLight,
                      ),
                      TextSpan(
                        text: " Privacy Policy",
                        style: CustomTextStyles.labelLarge13,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 16.v),
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
    );
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
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
  Widget _buildSignUpWithGoogle(BuildContext context) {
    return CustomElevatedButton(
      height: 58.v,
      text: "Sign up with Google",
      margin: EdgeInsets.only(
        left: 39.h,
        right: 40.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSearch1,
          height: 25.adaptSize,
          width: 25.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.titleSmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSignUpWithApple(BuildContext context) {
    return CustomElevatedButton(
      height: 58.v,
      text: "Sign up with Apple",
      margin: EdgeInsets.only(
        left: 39.h,
        right: 40.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgApple1,
          height: 25.adaptSize,
          width: 25.adaptSize,
        ),
      ),
      buttonStyle:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
      // buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      // buttonTextStyle: CustomTextStyles.titleSmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSignUpWithFacebook(BuildContext context) {
    return CustomElevatedButton(
      height: 58.v,
      text: "Sign up with Facebook",
      margin: EdgeInsets.only(
        left: 39.h,
        right: 40.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook1,
          height: 25.adaptSize,
          width: 25.adaptSize,
        ),
      ),
      buttonStyle:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
      // buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      // buttonTextStyle: CustomTextStyles.titleSmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iphone14FiveScreen();
        }));
      },
      text: "Create Account",
      margin: EdgeInsets.symmetric(horizontal: 39.h),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iphone14SixScreen(
            login: true,
          );
        }));
      },
      text: "Login",
      margin: EdgeInsets.symmetric(horizontal: 39.h),
    );
  }
}

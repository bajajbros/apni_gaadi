import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_four_screen/iphone_14_four_screen.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class Iphone14ThreeScreen extends StatelessWidget {
  Iphone14ThreeScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = ["lbl_english", "lbl_hindi"];

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
              Spacer(
                flex: 47,
              ),
              _buildGroup611(context),
              SizedBox(height: 97.v),
              CustomOutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Iphone14FourScreen();
                  }));
                },
                text: "Next",
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 39.h,
                ),
              ),
              Spacer(
                flex: 52,
              ),
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
    );
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 55.v,
      ),
      decoration: AppDecoration.gradientCyanToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 66.v),
          CustomImageView(
            imagePath: ImageConstant.img21,
            height: 48.v,
            width: 175.h,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 67.h),
            child: Row(
              children: [
                Container(
                  width: 153.h,
                  margin: EdgeInsets.only(bottom: 4.v),
                  child: Text(
                    "Select your preferred language.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTranslate1,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  margin: EdgeInsets.only(left: 64.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup611(BuildContext context) {
    return Column(
      children: [
        CustomRadioButton(
          text: "English",
          value: radioList[0],
          groupValue: radioGroup,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 14.v,
          ),
          onChange: (value) {
            radioGroup = value;
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 40.v),
          child: CustomRadioButton(
            text: "Hindi",
            value: radioList[1],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 15.v,
            ),
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
      ],
    );
  }
}

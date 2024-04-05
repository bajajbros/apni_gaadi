import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_four_screen/iphone_14_four_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_three_screen/iphone_14_three_screen.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14TwoScreen extends StatelessWidget {
  const Iphone14TwoScreen({Key? key})
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
              _buildWelcomeSection(context),
              SizedBox(height: 42.v),
              CustomImageView(
                imagePath: ImageConstant.img31,
                height: 229.v,
                width: 390.h,
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 294.h,
                  child: Divider(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    indent: 43.h,
                  ),
                ),
              ),
              SizedBox(height: 81.v),
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
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 52.v,
      ),
      decoration: AppDecoration.gradientCyanToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 43.v),
          Text(
            "Welcome !",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 10.v),
          Text(
            "Get a new experience with,",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 33.v),
          CustomImageView(
            imagePath: ImageConstant.img21,
            height: 48.v,
            width: 175.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

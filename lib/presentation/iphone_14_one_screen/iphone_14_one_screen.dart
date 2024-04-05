import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_nine_container_screen/iphone_14_nine_container_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_nine_page/iphone_14_nine_page.dart';
import 'package:apni_gaadi/presentation/iphone_14_two_screen/iphone_14_two_screen.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Iphone14OneScreen extends StatelessWidget {
  const Iphone14OneScreen({Key? key})
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
              _buildFiftySevenColumn(context),
              SizedBox(height: 30.v),
              CustomImageView(
                imagePath: ImageConstant.img11,
                height: 303.v,
                width: 195.h,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 30.v),
              CustomOutlinedButton(
                onPressed: () async {
                  SharedPreferences preferences =
                      await SharedPreferences.getInstance();
                  String? phone = preferences.getString("phone");

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return phone == null
                            ? Iphone14TwoScreen()
                            : Iphone14NineContainerScreen(
                                phone: phone,
                              );
                      },
                    ),
                  );
                },
                text: "Next",
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 39.h,
                ),
              ),
              SizedBox(height: 50.v),
              Divider(),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "Or Pantner with Us",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
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
  Widget _buildFiftySevenColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 83.v,
      ),
      decoration: AppDecoration.gradientCyanToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 44.v),
          CustomImageView(
            imagePath: ImageConstant.img21,
            height: 73.v,
            width: 267.h,
          ),
        ],
      ),
    );
  }
}

import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RaviItemWidget extends StatelessWidget {
  const RaviItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray80001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1140x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ravi",
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          "7:12 pm",
                          style: CustomTextStyles.bodySmallLight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "some text here",
                    style: CustomTextStyles.bodyMediumLight_1,
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

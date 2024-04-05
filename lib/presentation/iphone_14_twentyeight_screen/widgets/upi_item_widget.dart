import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UpiItemWidget extends StatelessWidget {
  const UpiItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 104.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUpi1,
            height: 29.v,
            width: 82.h,
          ),
          SizedBox(height: 19.v),
          Text(
            "UPI",
            style: CustomTextStyles.titleSmallBlack900Medium,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}

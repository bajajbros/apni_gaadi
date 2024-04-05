import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VarunItemWidget extends StatelessWidget {
  const VarunItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillGray400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img81,
            height: 39.v,
            width: 72.h,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 24.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 228.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Varun",
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "₹ 120",
                        style: CustomTextStyles.titleSmallOnError,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "Paid Online",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "3:32pm, 23/04/2023",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

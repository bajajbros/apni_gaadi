import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecommendedItemWidget extends StatelessWidget {
  const RecommendedItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray5001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img121,
                  height: 36.v,
                  width: 78.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 7.v,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 83.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Text(
                        "Recommended",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 178.h,
                        margin: EdgeInsets.only(left: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 9.v),
                              child: Text(
                                "Capacity-4",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Text(
                                "₹ 500.00",
                                style: CustomTextStyles.titleSmallOnError,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "Mini",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 67.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "7:38 pm 6 mins away",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Sedan extends StatelessWidget {
  const Sedan({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray5001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  fit: BoxFit.fill,
                  imagePath: "assets/images/img_13_1.png",
                  height: 56.v,
                  width: 120.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 7.v,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   width: 83.h,
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: 5.h,
                    //     vertical: 4.v,
                    //   ),
                    //   decoration: AppDecoration.fillErrorContainer.copyWith(
                    //     borderRadius: BorderRadiusStyle.roundedBorder5,
                    //   ),
                    //   child: Text(
                    //     "Recommended",
                    //     style: theme.textTheme.labelMedium,
                    //   ),
                    // ),
                    // SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 178.h,
                        margin: EdgeInsets.only(left: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 9.v),
                              child: Text(
                                "Capacity-4",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Text(
                                "₹ 500.00",
                                style: CustomTextStyles.titleSmallOnError,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "Sedan",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 67.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "7:38 pm 5 mins away",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SUV extends StatelessWidget {
  const SUV({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray5001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  fit: BoxFit.fill,
                  imagePath: "assets/images/img_14_1.png",
                  height: 56.v,
                  width: 120.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 7.v,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   width: 83.h,
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: 5.h,
                    //     vertical: 4.v,
                    //   ),
                    //   decoration: AppDecoration.fillErrorContainer.copyWith(
                    //     borderRadius: BorderRadiusStyle.roundedBorder5,
                    //   ),
                    //   child: Text(
                    //     "Recommended",
                    //     style: theme.textTheme.labelMedium,
                    //   ),
                    // ),
                    // SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 178.h,
                        margin: EdgeInsets.only(left: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 9.v),
                              child: Text(
                                "Capacity-4",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Text(
                                "₹ 500.00",
                                style: CustomTextStyles.titleSmallOnError,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "SUV",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 67.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "7:38 pm 5 mins away",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

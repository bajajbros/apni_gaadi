import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/backend/modals.dart';
import 'package:apni_gaadi/chat/chat_list.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/main.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyeight_screen/iphone_14_twentyeight_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentynine_screen/iphone_14_twentynine_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentyseven_screen/iphone_14_twentyseven_screen.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14TwentysixDraweritem extends StatelessWidget {
  final String phone;
  Iphone14TwentysixDraweritem({Key? key, required this.phone})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        height: mediaQueryData.size.height,
        width: 330.h,
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.gradientOnPrimaryToGray,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1170x70,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                35.h,
              ),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 30.h,
                top: 70.v,
              ),
            ),
            FutureBuilder<List<DriverInfo>>(
                future: ApiMethods.displayDriverInformation(
                    ph: phone, status: "User"),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 120.h,
                          top: 104.v,
                        ),
                        child: Text(
                          snapshot.data![0].name,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    );
                  }
                  return Container();
                }),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 190.v,
                  bottom: 41.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Divider(
                      color: appTheme.black900,
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 15.h,
                      ),
                      child: InkWell(
                        onTap: () {
                          navigatorKey.currentState!
                              .push(MaterialPageRoute(builder: (context) {
                            return Iphone14TwentysevenScreen(
                              phone: phone,
                            );
                          }));
                        },
                        child: Container(
                          width: 295.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 9.v,
                          ),
                          decoration: AppDecoration.fillGray70001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "My Account Information",
                            style: CustomTextStyles.titleSmallMedium,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 15.h,
                      ),
                      child: InkWell(
                        onTap: () {
                          navigatorKey.currentState!
                              .push(MaterialPageRoute(builder: (context) {
                            return Iphone14TwentyeightScreen();
                          }));
                        },
                        child: Container(
                          width: 295.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 9.v,
                          ),
                          decoration: AppDecoration.fillGray70001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "My Account Wallet",
                            style: CustomTextStyles.titleSmallMedium,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 15.h,
                      ),
                      child: InkWell(
                        onTap: () {
                          navigatorKey.currentState!
                              .push(MaterialPageRoute(builder: (context) {
                            return Iphone14TwentynineScreen();
                          }));
                        },
                        child: Container(
                          width: 295.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 9.v,
                          ),
                          decoration: AppDecoration.fillGray70001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "Ride History",
                            style: CustomTextStyles.titleSmallMedium,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 15.h,
                      ),
                      child: InkWell(
                        onTap: () {
                          navigatorKey.currentState!
                              .push(MaterialPageRoute(builder: (context) {
                            return ChatListScreen(phone: phone);
                          }));
                        },
                        child: Container(
                          width: 295.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 9.v,
                          ),
                          decoration: AppDecoration.fillGray70001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "Messages",
                            style: CustomTextStyles.titleSmallMedium,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 15.h,
                      ),
                      child: Container(
                        width: 295.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.fillGray70001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "Support",
                          style: CustomTextStyles.titleSmallMedium,
                        ),
                      ),
                    ),
                    Spacer(),
                    Divider(
                      color: appTheme.black900,
                    ),
                    SizedBox(height: 34.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Do more",
                          style: CustomTextStyles.labelLarge13_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Make money by driving",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Rate us on Playstore",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Apni-Gaadi.com",
                          style: CustomTextStyles.titleMedium17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  // Widget _buildEpRight(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: 20.h,
  //       right: 15.h,
  //     ),
  //     child: CustomTextFormField(
  //       controller: epRightController,
  //       hintText: "My Account Information",
  //       hintStyle: CustomTextStyles.titleSmallMedium,
  //       contentPadding: EdgeInsets.symmetric(
  //         horizontal: 15.h,
  //         vertical: 10.v,
  //       ),
  //       borderDecoration: TextFormFieldStyleHelper.fillGray,
  //       filled: true,
  //       fillColor: appTheme.gray70001,
  //     ),
  //   );
  // }

  // /// Section Widget
  // Widget _buildMyAccountWallet(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: 20.h,
  //       right: 15.h,
  //     ),
  //     child: CustomTextFormField(
  //       controller: myAccountWalletController,
  //       hintText: "My Account Wallet",
  //       hintStyle: CustomTextStyles.titleSmallMedium,
  //       contentPadding: EdgeInsets.symmetric(
  //         horizontal: 15.h,
  //         vertical: 10.v,
  //       ),
  //       borderDecoration: TextFormFieldStyleHelper.fillGray,
  //       filled: true,
  //       fillColor: appTheme.gray70001,
  //     ),
  //   );
  // }

  /// Section Widget
  // Widget _buildRideHistory(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: 20.h,
  //       right: 15.h,
  //     ),
  //     child: CustomTextFormField(
  //       controller: rideHistoryController,
  //       hintText: "Ride History",
  //       hintStyle: CustomTextStyles.titleSmallMedium,
  //       contentPadding: EdgeInsets.symmetric(
  //         horizontal: 15.h,
  //         vertical: 10.v,
  //       ),
  //       borderDecoration: TextFormFieldStyleHelper.fillGray,
  //       filled: true,
  //       fillColor: appTheme.gray70001,
  //     ),
  //   );
  // }

  // /// Section Widget
  // Widget _buildMessage(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: 20.h,
  //       right: 15.h,
  //     ),
  //     child: CustomTextFormField(
  //       controller: messageController,
  //       hintText: "Messages",
  //       hintStyle: CustomTextStyles.titleSmallMedium,
  //       textInputAction: TextInputAction.done,
  //       contentPadding: EdgeInsets.symmetric(
  //         horizontal: 15.h,
  //         vertical: 10.v,
  //       ),
  //       borderDecoration: TextFormFieldStyleHelper.fillGray,
  //       filled: true,
  //       fillColor: appTheme.gray70001,
  //     ),
  //   );
  // }
}

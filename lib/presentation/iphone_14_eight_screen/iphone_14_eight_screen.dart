import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/main.dart';
import 'package:apni_gaadi/presentation/iphone_14_twelve_screen/iphone_14_twelve_screen.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class MyLocation {
  String? locationString;
  LatLng? latLng;

  MyLocation(this.locationString, this.latLng);
}

class Iphone14EightScreen extends StatelessWidget {
  final MyLocation pickup;
  final MyLocation drop;

  final String phone;
  const Iphone14EightScreen(
      {Key? key, required this.phone, required this.pickup, required this.drop})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle13,
                height: 403.v,
                width: 390.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 33.h,
                    vertical: 10.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray900,
                    borderRadius: BorderRadiusStyle.customBorderBL40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 36.v),
                      Container(
                        width: 288.h,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          right: 18.h,
                        ),
                        child: Text(
                          "Select your location from the map",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        width: 321.h,
                        child: Text(
                          "Move the pin on the map to find your location and select the delivery address.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMedium15,
                        ),
                      ),
                      SizedBox(height: 60.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          right: 11.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: CustomTextStyles.titleMedium17,
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgVectorOnprimarycontainer,
                              height: 8.v,
                              width: 4.h,
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 6.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          right: 6.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "42, block B, ADA colony, Aligarh (UP)",
                              style: CustomTextStyles.bodyMedium15,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowRight1,
                              height: 13.adaptSize,
                              width: 13.adaptSize,
                              margin: EdgeInsets.only(
                                left: 25.h,
                                bottom: 6.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 29.v),
                      Divider(
                        color: appTheme.black900,
                      ),
                      SizedBox(height: 29.v),
                      CustomOutlinedButton(
                        onPressed: () {
                          navigatorKey.currentState!.push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Iphone14TwelveScreen(
                                  phone: phone,
                                );
                              },
                            ),
                          );
                        },
                        text: "Next",
                        margin: EdgeInsets.only(
                          left: 5.h,
                          right: 6.h,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      CustomOutlinedButton(
                        onPressed: () {
                          navigatorKey.currentState!.push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Iphone14TwelveScreen(
                                  phone: phone,
                                );
                              },
                            ),
                          );
                        },
                        text: "Add it Manually ",
                        margin: EdgeInsets.only(
                          left: 5.h,
                          right: 6.h,
                        ),
                        buttonStyle:
                            CustomButtonStyles.outlineOnPrimaryContainerTL152,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

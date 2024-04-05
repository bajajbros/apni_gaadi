import 'dart:async';
import 'dart:convert';

import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_eight_screen/iphone_14_eight_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_nine_container_screen/iphone_14_nine_container_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_nine_page/iphone_14_nine_page.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

class Iphone14SevenScreen extends StatefulWidget {
  final String phone;
  String otp;
  Iphone14SevenScreen({Key? key, required this.phone, required this.otp})
      : super(
          key: key,
        );

  @override
  State<Iphone14SevenScreen> createState() => _Iphone14SevenScreenState();
}

class _Iphone14SevenScreenState extends State<Iphone14SevenScreen> {
  void sendOTP(context) async {
    String url =
        "https://2factor.in/API/V1/d95d758b-92a4-11ed-9158-0200cd936042/SMS/+91${widget.phone}/AUTOGEN2/OTP1";
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        String otp = data['OTP'];
        Fluttertoast.showToast(msg: "OTP Sent Successfully");
        setState(() {
          resend = false;
        });
        widget.otp = otp;
      } else {
        // Handle error
        Fluttertoast.showToast(msg: "Failed");
      }
    } catch (error) {
      // Handle error
      Fluttertoast.showToast(msg: "Failed");
    }
  }

  bool resend = false;

  int seconds = 45;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (seconds == 0) {
          timer.cancel();
          setState(() {
            resend = true;
          });
          // Do something when the timer reaches 0
          print('Countdown reached 0!');
        } else {
          setState(() {
            seconds--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildEightyFive(context),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 286.h,
                  margin: EdgeInsets.only(
                    left: 25.h,
                    right: 79.h,
                  ),
                  child: Text(
                    "Enter the 4-digit OTP sent to you at XXX XXX XXXX",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              CustomImageView(
                imagePath: ImageConstant.img41,
                height: 112.v,
                width: 102.h,
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 20.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) async {
                    if (value.length == 6) {
                      if (widget.otp == value) {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        preferences.setString("phone", widget.phone);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Iphone14NineContainerScreen(
                            phone: widget.phone,
                          );
                        }));
                      } else {
                        Fluttertoast.showToast(msg: "Invalid OTP");
                      }
                    }
                  },
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 59.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "0:$seconds",
                          style: CustomTextStyles.labelLargeLightgreenA700,
                        ),
                      ),
                      InkWell(
                        onTap: resend
                            ? () {
                                sendOTP(context);
                              }
                            : null,
                        child: Padding(
                          padding: EdgeInsets.only(left: 43.h),
                          child: Text(
                            "Send code again",
                            style: CustomTextStyles.labelLargeLightgreenA700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 94.v),
              CustomOutlinedButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: "Invalid OTP");
                },
                text: "Next",
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 40.h,
                ),
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
              // SizedBox(height: 10.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
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
}

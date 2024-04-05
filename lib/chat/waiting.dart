import 'dart:async';
import 'dart:developer';

import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/chat/text.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/main.dart';
import 'package:apni_gaadi/presentation/iphone_14_twenty_screen/iphone_14_twenty_screen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SearchPageScreen extends StatefulWidget {
  final String token;
  final String userId;
  final String rideId;
  const SearchPageScreen({
    Key? key,
    required this.rideId,
    required this.token,
    required this.userId,
  }) : super(key: key);
  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 2), (timer) async {
      log("callinga after 2 seconds");

      final data = await ApiMethods.getRideHistory(
        status: "Accepted",
      );
      log("got data");
      if (data.isNotEmpty) {
        log("data is not empty");
        navigatorKey.currentState!.pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return Iphone14TwentyScreen(
              fare: data[0].fare,
              name: data[0].driver,
              driverPhone: data[0].driverph,
              userPhone: data[0].email);
        }), (route) => false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray900,
        body: Stack(
          children: [
            // backgroundImage(imageURl: 'images/background3.png'),
            Positioned(
              top: 20,
              child: Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  CustomText(
                    color: Colors.white,
                    text: "Searching for Cabs....",
                    size: 20,
                    weight: FontWeight.w500,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   'Searching Ride....',
                  //   // style: TStyleMedia.whiteRoboto18Medium2,
                  // ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'This may take a few seconds',
                    // style: TStyleMedia.white50Roboto11Medium2,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  DottedBorder(
                    borderType: BorderType.Circle,
                    color: appTheme.cyan400,
                    //color of dotted/dash line
                    strokeWidth: 3,
                    //thickness of dash/dots
                    dashPattern: const [10, 6],
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.transparent,
                      child: Center(
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          color: appTheme.cyan400,
                          //color of dotted/dash line
                          strokeWidth: 3,
                          //thickness of dash/dots
                          dashPattern: const [10, 6],
                          child: CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.transparent,
                            child: Center(
                              child: DottedBorder(
                                borderType: BorderType.Circle,
                                color: appTheme.cyan400,
                                //color of dotted/dash line
                                strokeWidth: 3,
                                //thickness of dash/dots
                                dashPattern: const [10, 6],
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.transparent,
                                  child: Center(
                                    child: Icon(
                                      Icons.account_circle,
                                      color: appTheme.cyan400,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 5.0, vertical: 20),
                  //   child: SlideAction(
                  //     sliderButtonYOffset: 5,
                  //     height: 50,
                  //     sliderButtonIconSize: 10,
                  //     sliderButtonIconPadding: 3,
                  //     onSubmit: () {
                  //       rejectOwn(widget.rideId);
                  //       Navigator.pushAndRemoveUntil(context,
                  //           MaterialPageRoute(builder: (context) {
                  //         return HomePage(
                  //             token: widget.token, userId: widget.userId);
                  //       }), (route) => false);
                  //     },
                  //     innerColor: ColorMedia.white,
                  //     outerColor: primaryColor,
                  //     alignment: Alignment.centerRight,
                  //     sliderButtonIcon: const Icon(CupertinoIcons.multiply),
                  //     child: Text('>>   Slide to cancel',
                  //         style: TStyleMedia.whiteMohave20SemiBold0),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

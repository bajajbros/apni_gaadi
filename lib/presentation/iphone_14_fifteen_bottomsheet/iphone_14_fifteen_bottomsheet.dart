import 'dart:math';

import 'package:apni_gaadi/backend/methods.dart';

import '../iphone_14_fifteen_bottomsheet/widgets/recommended_item_widget.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14FifteenBottomsheet extends StatefulWidget {
  final String pickup;
  final String drop;
  final String phone;

  const Iphone14FifteenBottomsheet(
      {Key? key, required this.pickup, required this.drop, required this.phone})
      : super(
          key: key,
        );

  @override
  State<Iphone14FifteenBottomsheet> createState() =>
      _Iphone14FifteenBottomsheetState();
}

class _Iphone14FifteenBottomsheetState
    extends State<Iphone14FifteenBottomsheet> {
  int getFare() {
    Random random = Random();
    // Generate a random number between 100 and 400
    int randomNumber = random.nextInt(301) + 100;
    return randomNumber;
  }

  Future<void> _showConfirmationDialog(
      BuildContext context, String type) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: appTheme.gray900,
          title: Text('Confirm Ride'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Do you want to confirm the ride and start looking for a driver?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                ApiMethods.insertRide(
                  pickup: widget.pickup,
                  time: DateTime.now().toString(),
                  dropLocation: widget.drop,
                  cabType: type,
                  fare: getFare().toString(),
                  seat: "",
                  status: "Pending",
                  driver: "",
                  driverph: "",
                  driverRating: "",
                  OTP: "",
                  tip: "",
                  email: widget.phone,
                  functionStatus: "NewRide",
                  rideId: "0",
                  driverId: "",
                );
                // Perform actions to start searching for a driver
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          Text(
            "Apni Gaadi",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 14.v),
          InkWell(
              onTap: () {
                _showConfirmationDialog(context, "Mini");
              },
              child: RecommendedItemWidget()),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                _showConfirmationDialog(context, "Sedan");
              },
              child: Sedan()),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                _showConfirmationDialog(context, "SUV");
              },
              child: SUV()),
          SizedBox(height: 20.v),
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
    );
  }

  /// Section Widget
  Widget _buildRecommendedList(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.v,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return RecommendedItemWidget();
          },
        ),
        SizedBox(height: 9.v),
        // Container(
        //   height: 128.v,
        //   width: double.maxFinite,
        //   decoration: BoxDecoration(
        //     color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        //   ),
        // ),
      ],
    );
  }
}

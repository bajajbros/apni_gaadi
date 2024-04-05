import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/backend/modals.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_title.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14TwentysevenScreen extends StatelessWidget {
  final String phone;
  const Iphone14TwentysevenScreen({Key? key, required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: FutureBuilder<List<DriverInfo>>(
        future: ApiMethods.displayDriverInformation(ph: phone, status: "User"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(
                  children: [
                    SizedBox(height: 3.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse10108x108,
                        height: 108.adaptSize,
                        width: 108.adaptSize,
                        radius: BorderRadius.circular(54.h)),
                    SizedBox(height: 14.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(snapshot.data![0].name,
                          style: theme.textTheme.titleLarge),
                      CustomImageView(
                          imagePath: ImageConstant.imgUiwEdit,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 14.h, top: 3.v))
                    ]),
                    SizedBox(height: 19.v),
                    SizedBox(height: 48.v),
                    _buildName(context, snapshot.data![0].name,
                        snapshot.data![0].mobile, snapshot.data![0].email),
                    Spacer(),
                    CustomOutlinedButton(
                        text: "Log Out",
                        margin: EdgeInsets.only(left: 39.h, right: 40.h)),
                    SizedBox(height: 20.v),
                    Container(
                        height: 9.v,
                        width: 119.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(4.h)))
                  ],
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 113.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "My Account Information"));
  }

  /// Section Widget
  Widget _buildName(
      BuildContext context, String name, String number, String email) {
    return SizedBox(
        height: 178.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 132.v),
              child: _buildEightyTwo(context, phone: "Name", mobileNo: name)),
          Padding(
              padding: EdgeInsets.only(top: 44.v, bottom: 88.v),
              child: _buildEightyTwo(context, phone: "Phone", mobileNo: phone)),
          Padding(
              padding: EdgeInsets.only(top: 88.v, bottom: 44.v),
              child:
                  _buildEightyTwo(context, phone: "Email ID", mobileNo: email)),
          Padding(
              padding: EdgeInsets.only(top: 132.v),
              child: _buildEightyTwo(context,
                  phone: "Language", mobileNo: "English, Hindi"))
        ]));
  }

  /// Common widget
  Widget _buildEightyTwo(
    BuildContext context, {
    required String phone,
    required String mobileNo,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 12.v),
        decoration: AppDecoration.outlinePrimary1,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(phone,
              style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1))),
          Text(mobileNo,
              style: CustomTextStyles.labelLarge13_1.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

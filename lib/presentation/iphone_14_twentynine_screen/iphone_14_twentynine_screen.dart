import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/backend/modals.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_leading_image.dart';
import 'package:apni_gaadi/widgets/app_bar/appbar_title.dart';
import 'package:apni_gaadi/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14TwentynineScreen extends StatelessWidget {
  const Iphone14TwentynineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: FutureBuilder<List<RideData>>(
            future: ApiMethods.getRideHistory(
              status: "Finished",
            ),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: _buildEightyThree2(
                          context,
                          snapshot.data![index].droplocation,
                          snapshot.data![index].time.toString(),
                          snapshot.data![index].fare,
                          snapshot.data![index].pickup),
                    );
                  },
                );
              }
              return Container();
            }),
        // body: ListView.builder(
        //   itemCount: 12,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(12.0),
        //       child: _buildEightyThree2(context, "Preet",
        //           DateTime.now().toString(), "200", "Paid Online"),
        //     );
        //   },
        // ),
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
        title: AppbarTitle(text: "Ride History"));
  }

  /// Section Widget

  /// Section Widget
  Widget _buildEightyThree2(BuildContext context, String name, String date,
      String price, String status) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.img81,
                  height: 39.v,
                  width: 72.h,
                  margin: EdgeInsets.only(bottom: 23.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(name, style: theme.textTheme.titleSmall),
                                  Text("₹ $price",
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.titleSmallOnError)
                                ]),
                            SizedBox(height: 5.v),
                            Text(status,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 5.v),
                            Text(date, style: theme.textTheme.bodyMedium)
                          ])))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_eight_screen/iphone_14_eight_screen.dart';
// import 'package:apni_gaadi/presentation/iphone_14_ten_screen/iphone_14_ten_screen.dart';
import 'package:apni_gaadi/presentation/iphone_14_twentysix_draweritem/iphone_14_twentysix_draweritem.dart';
// import 'package:apni_gaadi/widgets/custom_elevated_button.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:latlong2/latlong.dart';

import 'package:geocoding/geocoding.dart';

// ignore_for_file: must_be_immutable
class Iphone14NinePage extends StatefulWidget {
  final String phone;
  Iphone14NinePage({Key? key, required this.phone})
      : super(
          key: key,
        );

  @override
  State<Iphone14NinePage> createState() => _Iphone14NinePageState();
}

class _Iphone14NinePageState extends State<Iphone14NinePage> {
  String _address = "Loading...";

  SearchBoxAPI searchBoxAPI = SearchBoxAPI(
      apiKey:
          "pk.eyJ1IjoiYXBuaS1nYWFkaSIsImEiOiJjbHNvYnQyNjcwMm53MmtvOHhpa2lrdDNjIn0.lN492h_vyijisfpwrzkHyQ");
  List<Suggestion> suggestions = [];

  void onTap(String text) async {
    final response = await searchBoxAPI.getSuggestions(text);
    if (response.success != null) {
      setState(() {
        suggestions = response.success!.suggestions;
      });
    } else {
      print("No suggestions available");
    }
  }

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
  }

  Future<void> _checkLocationPermission() async {
    var status = await Permission.location.status;
    if (status == PermissionStatus.granted) {
      _getLocation();
    } else {
      await _requestLocationPermission();
    }
  }

  Future<void> _requestLocationPermission() async {
    var status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      _getLocation();
    } else {
      setState(() {
        _address = "Permission denied";
      });
    }
  }

  LatLng? location;
  Future<void> _getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      Placemark place = placemarks[0];
      setState(() {
        _address = "${place.street}, ${place.locality}, ${place.country}";
        location = LatLng(position.latitude, position.longitude);
      });
    } catch (e) {
      print("Error: $e");
      setState(() {
        _address = "Error retrieving location";
      });
    }
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: false,
          backgroundColor: appTheme.gray900,
        ),
        endDrawer: Iphone14TwentysixDraweritem(
          phone: widget.phone,
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              // Align(
              //     alignment: Alignment.topRight,
              //     child: IconButton(
              //       onPressed: () {
              //         Scaffold.of(context).openDrawer();
              //       },
              //       icon: Icon(
              //         Icons.menu,
              //         color: Colors.white,
              //       ),
              //     )),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildIndividualRide(context),
                      SizedBox(height: 18.v),
                      // Divider(
                      //   indent: 20.h,
                      //   endIndent: 20.h,
                      // ),
                      // SizedBox(height: 16.v),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 43.h),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       CustomImageView(
                      //         imagePath: ImageConstant.imgLocation1,
                      //         height: 30.adaptSize,
                      //         width: 30.adaptSize,
                      //         margin: EdgeInsets.only(
                      //           top: 7.v,
                      //           bottom: 9.v,
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.only(left: 25.h),
                      //         child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text(
                      //               "Metro Station",
                      //               style: theme.textTheme.titleLarge,
                      //             ),
                      //             SizedBox(height: 8.v),
                      //             Text(
                      //               "Guar city, Noida UP",
                      //               style: theme.textTheme.bodySmall,
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //       Spacer(),
                      //       CustomImageView(
                      //         imagePath: ImageConstant.imgMingcuteRightLine,
                      //         height: 24.adaptSize,
                      //         width: 24.adaptSize,
                      //         margin: EdgeInsets.only(
                      //           top: 10.v,
                      //           bottom: 12.v,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      // SizedBox(height: 28.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle17,
                        height: 210.v,
                        width: 390.h,
                      ),
                      SizedBox(height: 10.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup4,
                        height: 6.v,
                        width: 215.h,
                      ),
                      SizedBox(height: 29.v),
                      _buildChooseYourSharing(context),
                      SizedBox(height: 28.v),
                      _buildView(context),
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

  /// Section Widget
  Widget _buildIndividualRide(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOutlinedButton(
                  height: 36.v,
                  width: 133.h,
                  text: "Individual Ride",
                  buttonStyle: CustomButtonStyles.outlineGray,
                  buttonTextStyle: theme.textTheme.labelMedium!,
                ),
                SizedBox(height: 14.v),
                Text(
                  "Your Location",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 10.v),
                Text(
                  _address,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 18.v),
                CustomTextFormField(
                  onChanged: (value) {
                    onTap(value);
                  },
                  controller: searchController,
                  hintText: "Enter drop point",
                  hintStyle: CustomTextStyles.titleSmallNunito,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 10.v, 8.h, 10.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 45.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 12.v, 30.h, 13.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMingcutetimefill,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      color: Colors.white,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 45.v,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 11.v),
                  // borderDecoration: TextFormFieldStyleHelper.fillBlack,
                  filled: true,
                  fillColor: appTheme.black900.withOpacity(0.04),
                ),
                SizedBox(height: 30.v),
                ListView.builder(
                    itemCount: suggestions.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(16),
                        child: InkWell(
                          onTap: () async {
                            SearchBoxAPI search = SearchBoxAPI(
                              apiKey:
                                  'pk.eyJ1IjoiYXBuaS1nYWFkaSIsImEiOiJjbHNvYnQyNjcwMm53MmtvOHhpa2lrdDNjIn0.lN492h_vyijisfpwrzkHyQ', // dont pass if you have set it in MapBoxSearch.init('API KEY')
                              limit: 6,
                            );
                            ApiResponse<RetrieveResonse> searchPlace =
                                await search
                                    .getPlace(suggestions[index].mapboxId);

                            final dropLocation = LatLng(
                                searchPlace.success!.features[0].geometry
                                    .coordinates.lat,
                                searchPlace.success!.features[0].geometry
                                    .coordinates.long);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Iphone14EightScreen(
                                    drop: MyLocation(
                                        suggestions[index].placeFormatted,
                                        dropLocation),
                                    pickup: MyLocation(_address, location),
                                    phone: widget.phone,
                                  );
                                },
                              ),
                            );
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLocation1,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 9.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      suggestions[index].name,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    SizedBox(height: 6.v),
                                    Text(
                                      suggestions[index].placeFormatted ?? "",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 62.v,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CustomElevatedButton(
                //   width: 66.h,
                //   text: "Change",
                //   buttonStyle: CustomButtonStyles.fillErrorContainer,
                // ),
                SizedBox(height: 113.v),
                CustomImageView(
                  imagePath: ImageConstant.imgMingcuteRightLine,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 18.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseYourSharing(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Choose your sharing ride",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Text(
            "See all",
            style: CustomTextStyles.bodyMedium15,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        width: 172.h,
        margin: EdgeInsets.only(left: 178.h),
        padding: EdgeInsets.symmetric(
          horizontal: 37.h,
          vertical: 17.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup102,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 93.v,
              width: 76.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 76.adaptSize,
                      width: 76.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.teal200,
                            appTheme.blueGray900,
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img61,
                    height: 74.v,
                    width: 36.h,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Text(
                "Apni Car",
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

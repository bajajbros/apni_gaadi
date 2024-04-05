import 'package:apni_gaadi/backend/methods.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:apni_gaadi/presentation/iphone_14_six_screen/iphone_14_six_screen.dart';
import 'package:apni_gaadi/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14FiveScreen extends StatefulWidget {
  Iphone14FiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<Iphone14FiveScreen> createState() => _Iphone14FiveScreenState();
}

class _Iphone14FiveScreenState extends State<Iphone14FiveScreen> {
  String selectedCity = 'Select a city';

  List<String> indianCities = [
    'Select a city',
    'Mumbai',
    'Delhi',
    'Bangalore',
    'Hyderabad',
    'Ahmedabad',
    'Chennai',
    'Kolkata',
    'Surat',
    'Pune',
    // Add more cities as needed
  ];
  TextEditingController nameInputSectionController = TextEditingController();

  TextEditingController emailInputSectionController = TextEditingController();

  TextEditingController mobileNumberInputSectionController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildWelcomeSection(context),
                  SizedBox(height: 16.v),
                  Text(
                    "Create Account",
                    style: theme.textTheme.titleLarge!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: Text(
                        "Name",
                        style: CustomTextStyles.bodyMedium15,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildNameInputSection(context),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: Text(
                        "Email address",
                        style: CustomTextStyles.bodyMedium15,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildEmailInputSection(context),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 40.h),
                      child: Text(
                        "Mobile Number",
                        style: CustomTextStyles.bodyMedium15,
                      ),
                    ),
                  ),
                  // SizedBox(height: 14.v),
                  _buildMobileNumberInputSection(context),

                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: Text(
                        "City you want to ride in",
                        style: CustomTextStyles.bodyMedium15,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white, width: 1)),
                      padding: EdgeInsets.all(16.0),
                      child: DropdownButton<String>(
                        dropdownColor: appTheme.blueGray900,
                        value: selectedCity,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: indianCities
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 60.v),
                  _buildContinueButtonSection(context),
                  SizedBox(height: 50.v),
                  SizedBox(
                    width: 255.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By creating an account, you agree to your ",
                            style: CustomTextStyles.bodyMediumLight,
                          ),
                          TextSpan(
                            text: "Term of service ",
                            style: CustomTextStyles.labelLarge13,
                          ),
                          TextSpan(
                            text: "and",
                            style: CustomTextStyles.bodyMediumLight,
                          ),
                          TextSpan(
                            text: " Privacy Policy",
                            style: CustomTextStyles.labelLarge13,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
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
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 60.v,
      ),
      decoration: AppDecoration.gradientCyanToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 60.v),
          CustomImageView(
            imagePath: ImageConstant.img21,
            height: 48.v,
            width: 175.h,
          ),
          SizedBox(height: 13.v),
          Container(
            width: 245.h,
            margin: EdgeInsets.only(right: 84.h),
            child: Text(
              "Welcome new ApniGaadi pantner! Please fill your details.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
      child: CustomTextFormField(
        controller: nameInputSectionController,
        hintText: "Your Name",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
      child: CustomTextFormField(
        controller: emailInputSectionController,
        hintText: "Email Address (optional)",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
      child: CustomTextFormField(
        // width: 182.h,
        controller: mobileNumberInputSectionController,
        hintText: "Your Mobile Number",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.phone,
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButtonSection(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        ApiMethods.register(context,
            email: emailInputSectionController.text,
            mobile: mobileNumberInputSectionController.text,
            name: nameInputSectionController.text,
            city: selectedCity,
            status: "User",
            isUpdate: "false",
            ownerType: "",
            vehicle: "",
            profilePic: "",
            adhaar: "",
            DL: "",
            PAN: "",
            RC: "",
            insurance: "",
            isOnline: "",
            isOnlineStatus: "");
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return Iphone14SixScreen();
        // }));
      },
      text: "Continue",
      margin: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
    );
  }
}

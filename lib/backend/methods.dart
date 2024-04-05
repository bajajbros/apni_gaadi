import 'dart:convert';
import 'dart:developer';
import 'dart:math' as math;
import 'package:apni_gaadi/backend/chat_display.dart';
import 'package:apni_gaadi/chat/waiting.dart';
import 'package:apni_gaadi/main.dart';
import 'package:apni_gaadi/presentation/iphone_14_seven_screen/iphone_14_seven_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:apni_gaadi/backend/modals.dart';
import 'package:apni_gaadi/presentation/iphone_14_six_screen/iphone_14_six_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class ApiMethods {
  static String baseUrl =
      'https://dukanbook.in/APIs/WebService1.asmx'; // Replace with your actual base URL
  static String token =
      'ARTNBPKJDNJHDIGYUAMAGHDNCBI'; // Replace with your actual token

  static Future<void> _handleResponse(
      http.Response response, String successMessage) async {
    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: successMessage);
    } else {
      Fluttertoast.showToast(msg: "Failed to perform the operation");
    }
  }

  static Future<void> addBankAccount({
    required String type,
    required String paytm,
    required String UPI,
    required String bankac,
    required String holdername,
    required String bankifsc,
    required String driverph,
    required String status,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/AddBankAccount?token=$token&type=$type&paytm=$paytm&UPI=$UPI&bankac=$bankac&holdername=$holdername&bankifsc=$bankifsc&driverph=$driverph&status=$status'),
    );

    await _handleResponse(response, "Bank Account Added Successfully");
  }

  static Future<void> addLocation({
    required String location,
    required String carnumber,
    required String rideid,
    required String status,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/AddLocation?token=$token&location=$location&carnumber=$carnumber&rideid=$rideid&status=$status'),
    );

    await _handleResponse(response, "Location Added Successfully");
  }

  static Future<void> addSearch({
    required String locationname,
    required String address,
    required String phone,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/AddSearch?token=$token&locationname=$locationname&address=$address&phone=$phone'),
    );

    await _handleResponse(response, "Search Added Successfully");
  }

  static Future<void> getFare({
    required String vehicle,
    required String lat1,
    required String lon1,
    required String lat2,
    required String lon2,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/Fare?token=$token&vehicle=$vehicle&lat1=$lat1&lon1=$lon1&lat2=$lat2&lon2=$lon2'),
    );

    if (response.statusCode == 200) {
      // Process the fare response as needed
    } else {
      Fluttertoast.showToast(msg: "Failed to fetch Fare");
    }
  }

  static Future<void> insertRating({
    required String driverph,
    required String rating,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/InsertRating?token=$token&driverph=$driverph&Rating=$rating'),
    );

    await _handleResponse(response, "Rating Inserted Successfully");
  }

  static Future<void> insertRide({
    required String pickup,
    required String time,
    required String dropLocation,
    required String cabType,
    required String fare,
    required String seat,
    required String status,
    required String driver,
    required String driverph,
    required String driverRating,
    required String OTP,
    required String tip,
    required String email,
    required String functionStatus,
    required String rideId,
    required String driverId,
  }) async {
    // Your current latitude and longitude
    final location = await Geolocator.getCurrentPosition();
    double currentLat = location.latitude;
    double currentLon = location.longitude;

    // Random latitude and longitude for places in Delhi (India)
    double delhiLat = 28.6139 +
        math.Random().nextDouble() * 0.1; // Random latitude within 0.1 degrees
    double delhiLon = 77.2090 +
        math.Random().nextDouble() * 0.1; // Random longitude within 0.1 degrees

    http.Response response = await http.get(
      Uri.parse(
        '$baseUrl/InsertRide?token=$token&pickup=$pickup&plat=$currentLat&plon=$currentLon&dlat=$delhiLat&dlon=$delhiLon&Time=$time&Droplocation=$dropLocation&Cabtype=$cabType&fare=$fare&seat=$seat&status=$status&driver=$driver&driverph=$driverph&driverrating=$driverRating&OTP=$OTP&tip=$tip&email=$email&FunctionStatus=$functionStatus&rideid=$rideId&driverid=$driverId',
      ),
    );
    log(response.body);

    if (response.statusCode == 200) {
      final msg = jsonDecode(response.body)["message"];
      if (msg == "Ride Inserted!") {
        navigatorKey.currentState!.push(
          MaterialPageRoute(
            builder: (context) {
              return SearchPageScreen(
                rideId: rideId,
                token: token,
                userId: email,
              );
            },
          ),
        );
      }
    }
  }

  static Future<List<DisplayChat>> displayChats(
      BuildContext context, String phone) async {
    http.Response response = await http.get(
      Uri.parse('$baseUrl/GETChatList?token=$token&recievermail=$phone'),
    );
    if (response.statusCode == 200) {
      return displayChatFromMap(response.body);
    } else {
      Fluttertoast.showToast(
        msg: 'Error Calling api',
      );
      throw '';
    }
  }

  static Future<void> sendMessage(
      {required String token,
      required String message,
      required String senderName,
      required String senderMail,
      required String receiverName,
      required String receiverEmail,
      required String onlineStatus,
      required String readUnreadStatus}) async {
    // Replace with the actual base URL

    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/SendMessage?token=$token&message=$message&sendername=$senderName&sendermail=$senderMail&recievername=$receiverName&recieveremail=$receiverEmail&Onlinestatus=$onlineStatus&readunreadstatus=$readUnreadStatus'),
    );

    if (response.statusCode == 200) {
      log('message sent');
      // API call successful
    } else {
      // Error occurred while calling the API
      print('Error calling API');
    }
  }

  static Future getUnreadMessage(
    BuildContext context, {
    required String recievermail,
    required String sendermail,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/GETUnreadmessages?token=$token&recievermail=$recievermail&sendermail=$sendermail'),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)[0]['Column1'];
      return data ?? 0;
    } else {
      Fluttertoast.showToast(
        msg: 'Error Calling api',
      );
    }
  }

  static Future<void> login(
    BuildContext context, {
    required String name,
    required String mobile,
    required String status,
  }) async {
    final url =
        '$baseUrl/Login?token=$token&Name=$name&Mobile=$mobile&status=$status';
    http.Response response = await http.get(
      Uri.parse(url),
    );
    log(url);
    log(response.body);
    if (response.statusCode == 200) {
      final msg = jsonDecode(response.body)["message"];
      if (msg == "Succssfully Loggedin!") {
        String url =
            "https://2factor.in/API/V1/d95d758b-92a4-11ed-9158-0200cd936042/SMS/+91$mobile/AUTOGEN2/OTP1";
        try {
          final response = await http.get(Uri.parse(url));

          if (response.statusCode == 200) {
            Map<String, dynamic> data = jsonDecode(response.body);
            String otp = data['OTP'];
            Fluttertoast.showToast(msg: "OTP Sent Successfully");
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Iphone14SevenScreen(
                phone: mobile,
                otp: otp,
              );
            }));
          } else {
            // Handle error
            Fluttertoast.showToast(msg: "Failed");
          }
        } catch (error) {
          // Handle error
          Fluttertoast.showToast(msg: "Failed");
        }
      }
      Fluttertoast.showToast(msg: msg);
    }
    Fluttertoast.showToast(msg: "Error login");
  }

  static Future<void> register(
    BuildContext context, {
    required String email,
    required String mobile,
    required String name,
    required String city,
    required String status,
    required String isUpdate,
    required String ownerType,
    required String vehicle,
    required String profilePic,
    required String adhaar,
    required String DL,
    required String PAN,
    required String RC,
    required String insurance,
    required String isOnline,
    required String isOnlineStatus,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/Register?token=$token&Email=$email&Mobile=$mobile&name=$name&City=$city&status=$status&isupdate=$isUpdate&ownertype=$ownerType&vehicle=$vehicle&profilepic=$profilePic&adhaar=$adhaar&DL=$DL&PAN=$PAN&RC=$RC&Insurence=$insurance&ISONLINE=$isOnline&IsONLINEStatus=$isOnlineStatus&Isverified=string&Vehiclenumber=string&VehicleColor=string&VehicleModel=string&VehicleBrand=string&VehicleName=string'),
    );
    log(response.body);
    if (response.statusCode == 200) {
      final msg = jsonDecode(response.body)["message"];
      if (msg == "Successfully Registered!") {
        // SharedPreferences preferences = await SharedPreferences.getInstance();
        // preferences.setString("phone", mobile);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iphone14SixScreen();
        }));
      }
      Fluttertoast.showToast(msg: msg);
    }
  }

  static Future<void> updateWallet({
    required String email,
    required String balance,
    required String status,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/UpdateWallet?token=$token&email=$email&balance=$balance&status=$status'),
    );

    await _handleResponse(response, "Wallet Updated Successfully");
  }

  static Future<List<Coupon>> getCoupons() async {
    http.Response response = await http.get(
      Uri.parse('$baseUrl/Coupons?token=$token'),
    );

    if (response.statusCode == 200) {
      return getCouponsFromMap(response.body);
    } else {
      throw "Cannot display coupons: ${response.body}";
    }
  }

  static Future<List<RideData>> getRideHistory({required String status}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final phone = preferences.getString(
      "phone",
    );

    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/RideHistory?token=$token&status=$status&fordriver=false&contact=$phone'),
    );
    log(response.body);

    if (response.statusCode == 200) {
      final data = rideDataFromMap(response.body);
      log(data.length.toString());
      return data;
    } else {
      throw "Cannot display coupons: ${response.body}";
    }
  }

  static Future<List<BankInfo>> displayBank({
    required String driverPh,
  }) async {
    http.Response response = await http.get(
      Uri.parse('$baseUrl/DisplayBank?token=$token&driverph=$driverPh'),
    );

    if (response.statusCode == 200) {
      return getBankInfoFromMap(response.body);
    } else {
      throw "Cannot display bank information: ${response.body}";
    }
  }

  static Future<List<DriverInfo>> displayDriverInformation({
    required String ph,
    required String status,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/DisplayDriverInformation?token=$token&ph=$ph&status=$status'),
    );

    log(response.body);

    if (response.statusCode == 200) {
      return getDriverInfoFromMap(response.body);
    } else {
      throw "Cannot display driver information: ${response.body}";
    }
  }

  static Future<List<LocationInfo>> displayLocation({
    required String rideId,
  }) async {
    http.Response response = await http.get(
      Uri.parse('$baseUrl/DisplayLocation?token=$token&rideid=$rideId'),
    );

    if (response.statusCode == 200) {
      return getLocationInfoFromMap(response.body);
    } else {
      throw "Cannot display location information: ${response.body}";
    }
  }

  static Future<RatingInfo> displayRating({
    required String driverPh,
  }) async {
    http.Response response = await http.get(
      Uri.parse('$baseUrl/DisplayRating?token=$token&driverph=$driverPh'),
    );

    if (response.statusCode == 200) {
      return getRatingInfoFromMap(response.body);
    } else {
      throw "Cannot display rating information: ${response.body}";
    }
  }

  static Future<List<RideInfo>> displayRide({
    required String userLatitude,
    required String userLongitude,
    required String rideId,
    required String driverId,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          '$baseUrl/DisplayRide?token=$token&userLatitude=$userLatitude&userLongitude=$userLongitude&rideid=$rideId&driverid=$driverId'),
    );

    if (response.statusCode == 200) {
      return getRideInfoFromMap(response.body);
    } else {
      throw "Cannot display ride information: ${response.body}";
    }
  }

  static Future<List<SearchResult>> getSearch({
    required String phone,
  }) async {
    http.Response response = await http.get(
      Uri.parse('$baseUrl/GetSearch?token=$token&phone=$phone'),
    );

    if (response.statusCode == 200) {
      return getSearchResultFromMap(response.body);
    } else {
      throw "Cannot get search results: ${response.body}";
    }
  }

  static Future<List<WalletInfo>> getWallet({
    required String email,
    required String status,
  }) async {
    http.Response response = await http.get(
      Uri.parse('$baseUrl/GetWallet?token=$token&Email=$email&status=$status'),
    );

    if (response.statusCode == 200) {
      return getWalletInfoFromMap(response.body);
    } else {
      throw "Cannot get wallet information: ${response.body}";
    }
  }
}

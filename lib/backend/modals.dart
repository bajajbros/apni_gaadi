import 'dart:convert';

class Coupon {
  final int id;
  final String couponName;
  final String couponPrice;
  final String couponValidTill;
  final String couponDescription;

  Coupon({
    required this.id,
    required this.couponName,
    required this.couponPrice,
    required this.couponValidTill,
    required this.couponDescription,
  });

  factory Coupon.fromMap(Map<String, dynamic> json) => Coupon(
        id: json["id"],
        couponName: json["Couponname"],
        couponPrice: json["couponprice"],
        couponValidTill: json["couponvalidtill"],
        couponDescription: json["coupondes"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "Couponname": couponName,
        "couponprice": couponPrice,
        "couponvalidtill": couponValidTill,
        "coupondes": couponDescription,
      };
}

// Model class for DisplayBank API
class BankInfo {
  final int id;
  final String type;
  final String paytm;
  final String UPI;
  final String bankAccount;
  final String holderName;
  final String bankIFSC;
  final String driverPh;

  BankInfo({
    required this.id,
    required this.type,
    required this.paytm,
    required this.UPI,
    required this.bankAccount,
    required this.holderName,
    required this.bankIFSC,
    required this.driverPh,
  });

  factory BankInfo.fromMap(Map<String, dynamic> json) => BankInfo(
        id: json["id"],
        type: json["type"],
        paytm: json["paytm"],
        UPI: json["UPI"],
        bankAccount: json["bankac"],
        holderName: json["holdername"],
        bankIFSC: json["bankifsc"],
        driverPh: json["driverph"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "type": type,
        "paytm": paytm,
        "UPI": UPI,
        "bankac": bankAccount,
        "holdername": holderName,
        "bankifsc": bankIFSC,
        "driverph": driverPh,
      };
}

// Model class for DisplayDriverInformation API
class DriverInfo {
  final int id;
  final String name;
  final String email;
  final String mobile;
  final String city;

  DriverInfo({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.city,
  });

  factory DriverInfo.fromMap(Map<String, dynamic> json) => DriverInfo(
        id: json["id"],
        name: json["Name"],
        email: json["Email"],
        mobile: json["Mobile"],
        city: json["City"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "Name": name,
        "Email": email,
        "Mobile": mobile,
        "City": city,
      };
}

// Model class for DisplayLocation API
class LocationInfo {
  final int id;
  final String location;
  final String carNumber;
  final String rideId;

  LocationInfo({
    required this.id,
    required this.location,
    required this.carNumber,
    required this.rideId,
  });

  factory LocationInfo.fromMap(Map<String, dynamic> json) => LocationInfo(
        id: json["id"],
        location: json["Location"],
        carNumber: json["carnumber"],
        rideId: json["rideid"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "Location": location,
        "carnumber": carNumber,
        "rideid": rideId,
      };
}

// Model class for DisplayRating API
class RatingInfo {
  final double averageRating;

  RatingInfo({
    required this.averageRating,
  });

  factory RatingInfo.fromMap(Map<String, dynamic> json) => RatingInfo(
        averageRating: json["AverageRating"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "AverageRating": averageRating,
      };
}

// Model class for DisplayRide API
class RideInfo {
  final int id;
  final String rideId;
  final String driverId;
  final String status;

  RideInfo({
    required this.id,
    required this.rideId,
    required this.driverId,
    required this.status,
  });

  factory RideInfo.fromMap(Map<String, dynamic> json) => RideInfo(
        id: json["id"],
        rideId: json["rideid"],
        driverId: json["driverid"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "rideid": rideId,
        "driverid": driverId,
        "status": status,
      };
}

// Model class for GetSearch API
class SearchResult {
  final int column1;

  SearchResult({
    required this.column1,
  });

  factory SearchResult.fromMap(Map<String, dynamic> json) => SearchResult(
        column1: json["Column1"],
      );

  Map<String, dynamic> toMap() => {
        "Column1": column1,
      };
}

// Model class for GetWallet API
class WalletInfo {
  final int id;
  final String balance;
  final String driverPh;

  WalletInfo({
    required this.id,
    required this.balance,
    required this.driverPh,
  });

  factory WalletInfo.fromMap(Map<String, dynamic> json) => WalletInfo(
        id: json["id"],
        balance: json["balance"],
        driverPh: json["driverph"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "balance": balance,
        "driverph": driverPh,
      };
}

List<RideData> rideDataFromMap(String str) =>
    List<RideData>.from(json.decode(str).map((x) => RideData.fromMap(x)));

String rideDataToMap(List<RideData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class RideData {
  final int id;
  final String pickup;
  final String plat;
  final String plon;
  final DateTime time;
  final String droplocation;
  final String dlat;
  final String dlon;
  final String cabtype;
  final String fare;
  final String seat;
  final String status;
  final String driver;
  final String driverph;
  final String driverrating;
  final String otp;
  final String tip;
  final String email;

  RideData({
    required this.id,
    required this.pickup,
    required this.plat,
    required this.plon,
    required this.time,
    required this.droplocation,
    required this.dlat,
    required this.dlon,
    required this.cabtype,
    required this.fare,
    required this.seat,
    required this.status,
    required this.driver,
    required this.driverph,
    required this.driverrating,
    required this.otp,
    required this.tip,
    required this.email,
  });

  factory RideData.fromMap(Map<String, dynamic> json) => RideData(
        id: json["id"],
        pickup: json["pickup"],
        plat: json["plat"],
        plon: json["plon"],
        time: DateTime.parse(json["Time"]),
        droplocation: json["Droplocation"],
        dlat: json["dlat"],
        dlon: json["dlon"],
        cabtype: json["Cabtype"],
        fare: json["fare"],
        seat: json["seat"],
        status: json["status"],
        driver: json["driver"],
        driverph: json["driverph"],
        driverrating: json["driverrating"],
        otp: json["OTP"],
        tip: json["tip"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "pickup": pickup,
        "plat": plat,
        "plon": plon,
        "Time": time.toIso8601String(),
        "Droplocation": droplocation,
        "dlat": dlat,
        "dlon": dlon,
        "Cabtype": cabtype,
        "fare": fare,
        "seat": seat,
        "status": status,
        "driver": driver,
        "driverph": driverph,
        "driverrating": driverrating,
        "OTP": otp,
        "tip": tip,
        "email": email,
      };
}

List<Coupon> getCouponsFromMap(String str) =>
    List<Coupon>.from(json.decode(str).map((x) => Coupon.fromMap(x)));

List<BankInfo> getBankInfoFromMap(String str) =>
    List<BankInfo>.from(json.decode(str).map((x) => BankInfo.fromMap(x)));

List<DriverInfo> getDriverInfoFromMap(String str) =>
    List<DriverInfo>.from(json.decode(str).map((x) => DriverInfo.fromMap(x)));

List<LocationInfo> getLocationInfoFromMap(String str) =>
    List<LocationInfo>.from(
        json.decode(str).map((x) => LocationInfo.fromMap(x)));

RatingInfo getRatingInfoFromMap(String str) =>
    RatingInfo.fromMap(json.decode(str));

List<RideInfo> getRideInfoFromMap(String str) =>
    List<RideInfo>.from(json.decode(str).map((x) => RideInfo.fromMap(x)));

List<SearchResult> getSearchResultFromMap(String str) =>
    List<SearchResult>.from(
        json.decode(str).map((x) => SearchResult.fromMap(x)));

List<WalletInfo> getWalletInfoFromMap(String str) =>
    List<WalletInfo>.from(json.decode(str).map((x) => WalletInfo.fromMap(x)));

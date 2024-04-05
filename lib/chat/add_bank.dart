import 'package:apni_gaadi/chat/text.dart';
import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MagicCoinsRedeemScreen extends StatefulWidget {
  final String email;
  const MagicCoinsRedeemScreen({required this.email});

  @override
  _MagicCoinsRedeemScreenState createState() => _MagicCoinsRedeemScreenState();
}

class _MagicCoinsRedeemScreenState extends State<MagicCoinsRedeemScreen> {
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _bankAccountNumberController =
      TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _ifscController = TextEditingController();
  final TextEditingController _bankAccountOwnerController =
      TextEditingController();
  final TextEditingController _upiController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray900,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: appTheme.gray900,
        title: const Center(
          child: CustomText(
            text: "Add Bank Account",
            size: 20,
            color: Colors.white,
            weight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const CustomText(
                text: "• Enter Details to add Redeem Request",
                size: 16,
                color: Colors.white70,
                weight: FontWeight.bold,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedTextField(
                controller: _balanceController,
                hintText: 'Balance to withdraw',
                prefixIcon: Icons.account_balance_wallet,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter balance to withdraw';
                  }

                  // Parse the value to ensure it is a valid number
                  var amount = double.tryParse(value);

                  if (amount == null) {
                    return 'Please enter a valid number';
                  }

                  // Check if the amount is less than 100
                  if (amount < 100) {
                    return 'Minimum withdrawal amount is 100';
                  }

                  // You can add more validation logic here if needed
                  return null;
                },
              ),
              const SizedBox(height: 20),
              RoundedTextField(
                controller: _bankAccountNumberController,
                hintText: 'Bank account number',
                prefixIcon: Icons.account_balance,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter bank account number';
                  }
                  // Add more validation logic if required
                  return null;
                },
              ),
              const SizedBox(height: 20),
              RoundedTextField(
                controller: _addressController,
                hintText: 'Address',
                prefixIcon: Icons.location_on,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter address';
                  }
                  // Add more validation logic if required
                  return null;
                },
              ),
              const SizedBox(height: 20),
              RoundedTextField(
                controller: _ifscController,
                hintText: 'IFSC',
                prefixIcon: Icons.confirmation_number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter IFSC';
                  }
                  // Add more validation logic if required
                  return null;
                },
              ),
              const SizedBox(height: 20),
              RoundedTextField(
                controller: _bankAccountOwnerController,
                hintText: 'Bank account owner name',
                prefixIcon: Icons.person,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter bank account owner name';
                  }
                  // Add more validation logic if required
                  return null;
                },
              ),
              const SizedBox(height: 20),
              RoundedTextField(
                controller: _upiController,
                hintText: 'UPI',
                prefixIcon: Icons.payment,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter UPI';
                  }
                  // Add more validation logic if required
                  return null;
                },
              ),
              const SizedBox(height: 20),
              RoundedTextField(
                controller: _upiController,
                hintText: 'Adhaar/ PAN / Voter ID',
                prefixIcon: Icons.payment,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter UPI';
                  }
                  // Add more validation logic if required
                  return null;
                },
              ),
              const SizedBox(
                height: 60,
              ),
              primaryButton(
                bgColor: appTheme.cyan400,
                context: context,
                text: "Add Bank",
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    // homeServices.withdrawBalance(context,
                    //     currentBalance: balance[0].magicCoins,
                    //     balance: _balanceController.text,
                    //     method: "",
                    //     bankAccountNumber: _balanceController.text,
                    //     cBankAccountNumber: "",
                    //     address: _addressController.text,
                    //     ifsc: _ifscController.text,
                    //     name: _bankAccountOwnerController.text,
                    //     upi: _upiController.text,
                    //     email: widget.email);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final bool? obscureText;
  final Widget? suffix;
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController? controller;

  const RoundedTextField({
    this.obscureText,
    this.suffix,
    this.controller,
    this.validator,
    Key? key,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText ?? false,
        style: GoogleFonts.dmSans(
          height: 1,
          textStyle: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        decoration: InputDecoration(
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0xffFFFAFB).withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0xffFFFAFB).withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0xffFFFAFB).withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0xffFFFAFB).withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: const Color(0xffD9D9D9).withOpacity(0.2),
          suffixIcon: suffix,
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: GoogleFonts.dmSans(
            height: 1,
            textStyle: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w500),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget primaryButton({
  required BuildContext context,
  required String text,
  required VoidCallback? onTap,
  Color textColor = Colors.white,
  Color bgColor = Colors.white,
  double textSize = 20,
}) {
  return Container(
    decoration:
        BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)),
    child: ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        foregroundColor: MaterialStateProperty.all(Colors.transparent),

        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        // elevation: MaterialStateProperty.all(25),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: CustomText(
                size: textSize,
                text: text,
                color: textColor,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

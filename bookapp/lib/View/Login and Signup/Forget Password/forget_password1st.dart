// ignore_for_file: prefer_const_constructors

import 'package:bookapp/Constants/constants.dart';
import 'package:bookapp/View/Login%20and%20Signup/Forget%20Password/forget_password_otp.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/texifields.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/textfield_validations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordFirst extends StatelessWidget {
  ForgetPasswordFirst({Key? key}) : super(key: key);
  TextEditingController phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 0, right: 20),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 25,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "Forget Password?",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6e6b7b),
                  fontFamily: "Montserrat-Regular"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
            child: Text(
              "Please enter your associate mobile number. We'll send an sms with instructions to reset your password",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6e6b7b),
                  fontFamily: "Montserrat-Regular"),
            ),
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  phoneNumberTextFieldWidget(
                      context: context,
                      controller: phoneController,
                      validate: phoneNumberValidator,
                      labelText: "Mobile Number"),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.all(18),
                          height: 55,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            child: Text("Get Code"),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ForgetPasswordOtp(phonenum: phoneController.text)));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

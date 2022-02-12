// ignore_for_file: prefer_const_constructors

import 'package:bookapp/Constants/constants.dart';
import 'package:bookapp/View/Login%20and%20Signup/Forget%20Password/forget_password_final.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/otp.dart';
import 'package:flutter/material.dart';

class ForgetPasswordOtp extends StatefulWidget {
  ForgetPasswordOtp({Key? key, required this.phonenum}) : super(key: key);
  String phonenum;
  
  
  @override
  State<ForgetPasswordOtp> createState() => _ForgetPasswordOtpState();
}

class _ForgetPasswordOtpState extends State<ForgetPasswordOtp> {
  final hiderPlaceholder = "******";
var censuredPhoneNumber;
  @override
  void initState(){
    super.initState();
   if (this.widget.phonenum.length >= 6) {
      censuredPhoneNumber = "+92" +
          this.widget.phonenum.substring(0, 3) +
          this.widget.phonenum.substring(3, 4) +
          hiderPlaceholder +
          this.widget.phonenum.substring(this.widget.phonenum.length - 2);
    } else {
      censuredPhoneNumber = hiderPlaceholder;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 0, right: 20),
            child: IconButton(icon: Icon(Icons.arrow_back, size: 25,),onPressed: (){
              Navigator.pop(context);
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Forget password", style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6e6b7b),
                  fontFamily: "Montserrat-Regular"),),
          ),
          
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Catalog shared a code on your mobile number", style: TextStyle(fontSize: 14,  color: Color(0xff6e6b7b), fontFamily: "Montserrat-Regular"),),
          ),
           Padding(
            padding: const EdgeInsets.all(10),
            child: Text("${censuredPhoneNumber}", style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: "Montserrat-Regular"),),
          ),
          SizedBox(height: 25,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: otp_field(context, (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>ForgetPassword()));
              })),
          ),
          SizedBox(height: 10,),
          Center(
            child: RichText(text: TextSpan(
              text: "Didn't receive the code? ",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.black, fontFamily: "Montserrat-Regular"),
              children: [
                TextSpan(
                  text: "Resend",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: primaryColor, fontFamily: "Montserrat-Regular"),
                ),
              ]
            ),
            
            ),
          ),
        ],
        
      ),
      
    );
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:bookapp/Constants/constants.dart';
import 'package:bookapp/Services/Login%20and%20Signup/Forget%20and%20Reset%20Password/otp_for_register.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/texifields.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/textfield_validations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatelessWidget {
  RegisterUser({ Key? key }) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height:MediaQuery.of(context).size.height * 0.48),
          Form(key: _formKey
            ,child: Column(
            children: [
              textFieldwidget(context: context, width: 0.9, labelText: "Username", controller: usernamecontroller, keyboardtype: TextInputType.text, maxLength: 30, validate: checkfunc),
              phoneNumberTextFieldWidget(context: context, controller: phonecontroller, validate: phoneNumberValidator),
            // PasswordTextField(controller: passwordcontroller, labelText: "Password", validate:passwordValidator),
            SizedBox(height: 10,),
            Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      child: Text("Continue"),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
        // If the form is valid, display a snackbar. In the real world,
        // you'd often call a server or save the information in a database.
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>RegisterOtp(phonenum: phonecontroller.text)));
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
            ],
      
          )),
            
                    SizedBox(height: MediaQuery.of(context).size.height*0.20,),
                    Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: "Montserrat-Regular"),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                },
                              text: "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: primaryColor,
                                  fontFamily: "Montserrat-Regular"),
                            ),
                          ]),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,)
            
                   
        ],),
      ),
      
    );
  }
}
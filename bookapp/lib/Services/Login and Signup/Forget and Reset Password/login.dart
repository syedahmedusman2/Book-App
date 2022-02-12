import 'package:bookapp/Constants/constants.dart';
import 'package:bookapp/Services/Login%20and%20Signup/Forget%20and%20Reset%20Password/register.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/texifields.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/textfield_validations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
 

  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwprdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            //  test(phoneNumberController),
              
           phoneNumberTextFieldWidget(context: context, controller:phonenumberController , validate: novalidation, labelText: "Mobile Number"),
           PasswordTextField(controller: passwprdController, labelText: "Password", validate: novalidation),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 5, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (_) => ForgetPasswordFirst()));
                        },
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffb8c2cc),
                              fontFamily: "Montserrat-Regular"),
                        )),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    child: Text("Sign In"),
                    onPressed: () {
                   
                    },
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  )),
                  // ElevatedButton(onPressed: (){showloadingDialog(context);}, child: Text("child")),
                
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                        text: "New to our platform? ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Montserrat-Regular"),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => RegisterUser()));
                              },
                            text: "Sign Up",
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
            ],
          ),
        ),
      ),
    );
  }
}
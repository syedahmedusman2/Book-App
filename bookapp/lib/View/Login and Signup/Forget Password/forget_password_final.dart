// ignore_for_file: prefer_const_constructors

import 'package:bookapp/Constants/constants.dart';
import 'package:bookapp/View/Login%20and%20Signup/login.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/texifields.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/textfield_validations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController(); 
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 15, left: 5, right: 20),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));
                    
                  },
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 20),
                child: Text("Reset Password",style: TextStyle(color: fontColor,fontFamily: fontfamily,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: PasswordTextField(controller: passwordController, labelText: "Password", validate: passwordValidator)),
                Padding(
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.1, 1, 0, 6),
                  child: Text("Password must be at least 8 characters long", style: TextStyle(color: Color(0xff6e6b7b),fontFamily: "Montserrat-Regular",fontSize: 13),),
                )
                 ,Center(child:PasswordTextField(controller: confirmPasswordController, labelText: "Confirm Password", validate: passwordValidator)),
                Padding(
                   padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.1, 1, 0, 6),
                  child: Text("Both password must match", style: TextStyle(color: Color(0xff6e6b7b),fontFamily: "Montserrat-Regular", fontSize: 13,),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.45,),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(18),
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ElevatedButton(
                          child: Text("Reset password"),
                          onPressed:(){
                            if(_formKey.currentState!.validate()){
                              if(passwordController.text.isEmpty){
                               Get.snackbar("Error", "Fields cannot be empty",
                           colorText: Colors.red,) ;
                            }
                            else if(passwordController.text!=confirmPasswordController.text){
                        Get.snackbar("Error", "Confirm Password is not matching",
                           colorText: Colors.red,) ;
                      }
                      else{
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));}
                          
                            }
                            
                        // showloadingDialog(context);
                        // updateadminpassword(context, passwordController.text, passwordController, confirmPasswordController);
                        // Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context) => Homepage())));
                      // }
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
                  ],
                ),
              ),
      
          ],
        ),
      ),
    );
  }
}
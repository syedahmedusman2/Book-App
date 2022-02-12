// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:bookapp/Constants/constants.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/texifields.dart';
import 'package:bookapp/Widgets/Related%20to%20Forms/textfield_validations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController postaladdressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String? gender;

  // String? category;
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  Future _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        selectedDate = picked;
        dateController.value = TextEditingValue(
            text:
                '${picked.day.toString()}/${picked.month.toString()}/${picked.year.toString()}');
      });
  }

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
                icon: const Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Montserrat-Regular"),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "Signup to get registered!",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: "Montserrat-Regular"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Center(
                child: InkWell(
              onTap: getImage,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 50.0,
                child: CircleAvatar(
                  child: _image == null ? Text("Add Image") : null,
                  radius: 49.0,
                  backgroundImage: _image != null ? FileImage(_image!) : null,
                  backgroundColor: Colors.white,
                ),
              ),
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    textFieldwidget(
                        context: context,
                        width: 0.9,
                        labelText: "Full Name",
                        controller: nameController,
                        keyboardtype: TextInputType.text,
                        maxLength: 40,
                        validate: novalidation),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: MediaQuery.of(context).size.height * 0.06,
                            // margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffd8d6de), width: 0.5),
                                borderRadius: BorderRadius.circular(9)),
                            child: DropdownButton(
                              alignment: Alignment.bottomCenter,
                              borderRadius: BorderRadius.circular(11),
                              underline: Container(),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xff6e6b7b),
                              ),
                              hint: gender == null
                                  ? Text(
                                      'Gender',
                                      style: TextStyle(
                                          color: Color(0xffd8d6de),
                                          fontFamily: fontfamily),
                                    )
                                  : Text(
                                      gender!,
                                      style: TextStyle(
                                          color: Color(0xffd8d6de),
                                          fontFamily: fontfamily),
                                    ),
                              isExpanded: true,
                              iconSize: 30.0,
                              style: TextStyle(
                                color: Color(0xff6e6b7b),
                              ),
                              items: [
                                'Male',
                                'Female',
                              ].map(
                                (val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val),
                                  );
                                },
                              ).toList(),
                              onChanged: (val) {
                                setState(
                                  () {
                                    gender = val as String?;
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          //  Date Selection
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: GestureDetector(
                              onTap: () => _selectDate(context),
                              child: AbsorbPointer(
                                child: TextFormField(
                                  style: TextStyle(
                                      color: Color(0xff6e6b7b),
                                      fontFamily: fontfamily),
                                  controller: dateController,
                                  keyboardType: TextInputType.datetime,
                                  // onChanged: (_) {
                                  // _errorFunction();
                                  // },
                                  decoration: InputDecoration(
                                    focusColor: Colors.black,
                                    // errorText: _errorDateofBirth,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(9),
                                      borderSide: BorderSide(
                                          color: Color(0xffd8d6de), width: 0.5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(9),
                                      borderSide: BorderSide(
                                          color: Color(0xffd8d6de), width: 0.5),
                                    ),
                                    labelStyle:
                                        TextStyle(color: Color(0xffb8c2cc)),
                                    labelText: "Date of Birth",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: BorderSide(
                                          color: Color(0xffd8d6de), width: 0.5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    textFieldwidget(
                        context: context,
                        width: 0.9,
                        labelText: "Email Address",
                        controller: emailAddressController,
                        keyboardtype: TextInputType.emailAddress,
                        maxLength: 100,
                        validate: emailValidator),
                    textFieldwidget(
                        context: context,
                        width: 0.9,
                        labelText: "Postal Address",
                        controller: postaladdressController,
                        keyboardtype: TextInputType.text,
                        maxLength: 200,
                        validate: novalidation),
                    phoneNumberTextFieldWidget(
                        context: context,
                        controller: contactNumberController,
                        validate: novalidation,
                        labelText: "Mobile Number(Optional)"),
                    PasswordTextField(
                        controller: passwordController,
                        labelText: "Password",
                        validate: passwordValidator),
                    PasswordTextField(
                        controller: confirmPasswordController,
                        labelText: "Confirm Password",
                        validate: passwordValidator),
                    Center(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            child: Text("Signup"),
                            onPressed: () {
                              _formKey.currentState!.validate();
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
                )),
            SizedBox(
              height: 17,
            ),
            
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: "Montserrat-Regular"),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: "Log In",
                          style: TextStyle(
                              fontSize: 13,
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
    );
  }
}

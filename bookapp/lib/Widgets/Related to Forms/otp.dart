import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

Widget otp_field(context, void oncomp()) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.5,
    child: OTPTextField(
      width: 23,
      outlineBorderRadius: 11,
      margin: const EdgeInsets.all(4),
      length: 5,
      otpFieldStyle: OtpFieldStyle(focusBorderColor: const Color(0xff7F0E4C)),
      fieldWidth: 40,
      fieldStyle: FieldStyle.box,
      onCompleted: (String verificationCode) {
        oncomp();
      }, // end onSubmit
    ),
  );
}
import 'package:bookapp/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Widget textFieldwidget(
//     {required BuildContext context,
//     required double width,
//     required String labelText,
//     required TextEditingController controller,
//     required TextInputType keyboardtype,
//     required int maxLength,
//     // required String? errorText,
//     // required Function onChangedFunction,
//     required formFieldKey,
//     required validate,}
//     // String? Function(String?)? validator
//     ) {
//   return Padding(
//     padding: const EdgeInsets.only(bottom: 9),
//     child: Center(
//       child: Container(
//         width: MediaQuery.of(context).size.width * width,
//         constraints: const BoxConstraints(minHeight: 55),
//         child: TextFormField(
//           key: formFieldKey,
//           cursorColor: primaryColor,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           validator: validate,
//           controller: controller,
//           keyboardType: keyboardtype,
//           maxLines: null,
//           inputFormatters: [
//             LengthLimitingTextInputFormatter(maxLength),
//           ],
//           // onChanged: (_) {
//           //   onChangedFunction();
//           // },
//           decoration: InputDecoration(
//               focusColor: Colors.black,
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(11),
//                 borderSide: const BorderSide(color: primaryColor),
//               ),
//               // errorText: errorText,
//               labelStyle: const TextStyle(color: Color(0xffb8c2cc)),
//               labelText: labelText,
//               // hintText: "+92 312 1234 567",
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(11),
//                   borderSide: const BorderSide(color: Colors.black))),
//         ),
//       ),
//     ),
//   );
// }

// Widget phoneNumberTextFieldWidget(
//     {required context,
//     required TextEditingController controller,
//     required String? errorText,
//     required Function onChangedFunction,
//     required formFieldKey,
//     required validate,
//     // String? Function(String?)? validator
//     }) {
//   return Center(
//     child: Container(
//       width: MediaQuery.of(context).size.width * 0.9,
//       constraints: const BoxConstraints(minHeight: 55),
//       margin: const EdgeInsets.only(bottom: 9),
//       child: TextFormField(
//         key: formFieldKey,
//         cursorColor: primaryColor,
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         validator: validate,
//         controller: controller,
//         keyboardType: TextInputType.phone,
//         inputFormatters: [
//           LengthLimitingTextInputFormatter(11),
//         ],
//         onChanged: (_) {
//           onChangedFunction();
//         },
//         decoration: InputDecoration(
//             focusColor: Colors.black,
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11),
//               borderSide: const BorderSide(color: primaryColor),
//             ),
//             errorText: errorText,
//             labelStyle: const TextStyle(color: Color(0xffb8c2cc)),
//             labelText: "Mobile Number",
//             hintText: "+92 312 1234 567",
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(11),
//                 borderSide: const BorderSide(color: Colors.black))),
//       ),
//     ),
//   );
// }

// class PasswordTextField extends StatefulWidget {
//   const PasswordTextField(
//       {Key? key,
//       required this.controller,
//       required this.labelText,
//       required this.errorText,
//       required this.onChangedFunction
//       // required this.validator,
//       })
//       : super(key: key);
//   final Function onChangedFunction;
//   final String? errorText;
//   final TextEditingController controller;
//   final String labelText;
//   // String? Function(String?)? validator;
//   @override
//   _PasswordTextFieldState createState() => _PasswordTextFieldState();
// }

// class _PasswordTextFieldState extends State<PasswordTextField> {
//   bool passwordVisible = true;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.only(bottom: 9),
//         width: MediaQuery.of(context).size.width * 0.9,
//         constraints: const BoxConstraints(minHeight: 55),
//         child: TextFormField(
//           cursorColor: primaryColor,
//           toolbarOptions: const ToolbarOptions(copy: false),
//           // validator: widget.validator,
//           inputFormatters: [
//             LengthLimitingTextInputFormatter(15),
//           ],
//           onChanged: (_) {
//             widget.onChangedFunction();
//           },
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           maxLengthEnforced: true,
//           textCapitalization: TextCapitalization.sentences,
//           obscureText: passwordVisible,
//           keyboardType: TextInputType.visiblePassword,
//           controller: widget.controller,
//           decoration: InputDecoration(
//             errorText: widget.errorText,
//             suffixIcon: IconButton(
//               icon: Icon(
//                 passwordVisible ? Icons.visibility_off : Icons.visibility,
//                 color: Colors.black,
//               ),
//               onPressed: () {
//                 setState(() {
//                   passwordVisible = !passwordVisible;
//                 });
//               },
//             ),
//             focusColor: Colors.black,
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11),
//               borderSide: const BorderSide(color: primaryColor),
//             ),
//             labelStyle: const TextStyle(color: Color(0xffb8c2cc)),
//             labelText: widget.labelText,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11),
//               borderSide: const BorderSide(color: Color(0xffd8d6de)),
//             ),
//           ),
//         ));
//   }
// }

//Normal TextField
Widget textFieldwidget({required BuildContext context,
    required double width,
    required String labelText,
    required TextEditingController controller,
    required TextInputType keyboardtype,
    required int maxLength,
    // required String? errorText,
    // required Function onChangedFunction,
    // required formFieldKey,
    required validate,})
     {
      return Padding(
        padding: const EdgeInsets.only(bottom: 9),
        child: Center(
    child: Container(
        width: MediaQuery.of(context).size.width *width,
     constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height*0.06,),
        child: TextFormField(
          // key: formFieldKey,
          style: TextStyle(color: Color(0xff6e6b7b), fontFamily: fontfamily),
          textCapitalization: TextCapitalization.sentences,
          cursorColor: primaryColor,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validate,
          controller: controller,
          keyboardType: keyboardtype,
          maxLines: null,
          inputFormatters: [
            new LengthLimitingTextInputFormatter(maxLength),
          ],
          decoration: InputDecoration(
             contentPadding: EdgeInsets.only(top: 3, bottom: 3, left: 13),
              focusColor: Colors.black,
              labelStyle: TextStyle(color: Color(0xffb8c2cc)),
              labelText: labelText,
               enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.5, color:Color(0xffd8d6de), ),
               borderRadius: BorderRadius.circular(9),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: primaryColor, width: 0.5),
              
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.black,width: 0.5)),
                errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.red,width: 0.5)),
                focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.red,width: 0.5)
                )),
        ),
    ),
  ),
      );
  
}
// Phone Number Text Field
Widget phoneNumberTextFieldWidget({required context,required TextEditingController controller,
  //  required formFieldKey,
    required validate,
    required labelText}) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.9,
     constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height*0.06,),
      margin: EdgeInsets.only(bottom: 9),
      child: TextFormField(
        // key: formFieldKey,
        style: TextStyle(color: Color(0xff6e6b7b), fontFamily: fontfamily),
        cursorColor: primaryColor,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validate,
        controller: controller,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          new LengthLimitingTextInputFormatter(11),
  //         FilteringTextInputFormatter.digitsOnly,
  //  new CustomInputFormatter()
        ],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 3, bottom: 3, left: 13),
            focusColor: Colors.black,
            labelStyle: TextStyle(color: Color(0xffb8c2cc)),
            labelText: labelText,
            hintText: "0321 1234 567",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.5, color:Color(0xffd8d6de), ),
               borderRadius: BorderRadius.circular(9),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: primaryColor, width: 0.5),
              
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.black,width: 0.5)),
                errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.red,width: 0.5)),
                focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.red,width: 0.5)
                )),
      ),
    ),
  );
}

// Password TextField
class PasswordTextField extends StatefulWidget {
  PasswordTextField(
      {Key? key,
      required this.controller,
      required this.labelText,
      
    required this.validate,
    // required this.formFieldKey,
    })
      : super(key: key);
  TextEditingController controller;
  final labelText;
  String? Function(String?)? validate;
  // final GlobalKey<FormFieldState> formFieldKey;
  
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}
class _PasswordTextFieldState extends State<PasswordTextField> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 9),
        width: MediaQuery.of(context).size.width * 0.9,
     constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height*0.06,),
        child: TextFormField(
          // key: widget.formFieldKey,
          style: TextStyle(color: Color(0xff6e6b7b), fontFamily: fontfamily),
          cursorColor: primaryColor,
          toolbarOptions: ToolbarOptions(copy: false),
          validator: widget.validate,
          inputFormatters: [
            new LengthLimitingTextInputFormatter(15),
          ],
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLengthEnforced: true,
          textCapitalization: TextCapitalization.sentences,
          obscureText: passwordVisible,
          keyboardType: TextInputType.visiblePassword,
          controller: widget.controller,
          decoration: InputDecoration(
             contentPadding: EdgeInsets.only(top: 3, bottom: 3, left: 13),
            suffixIcon: IconButton(
              icon: Icon(
                passwordVisible ? Icons.visibility_off : Icons.visibility,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              },
            ),
            labelStyle: TextStyle(color: Color(0xffb8c2cc)),
            labelText: this.widget.labelText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.5, color:Color(0xffd8d6de), ),
               borderRadius: BorderRadius.circular(9),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: primaryColor, width: 0.5),
              
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.black,width: 0.5)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.red,width: 0.5)),
                focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.red,width: 0.5)
                )
          ),
        ));
  }
}
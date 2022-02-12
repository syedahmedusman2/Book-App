// ignore_for_file: prefer_function_declarations_over_variables

String? Function(String?)? checkfunc = (String? value) {
  if (value == null || value.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
};

// Email Validation
String? Function(String?)? emailValidator = (String? value) {
 String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value) || !value.contains("."))
      return 'Enter a valid email address';
    else
      return null;
 };
// Password Validation
 String? Function(String?)? passwordValidator = (String? value) {
 
    if (value == null || value.isEmpty || value.length < 8)
      return 'Password must be atleast 8 characters';
    else if(value.length<8){
      return 'Password must be atleast 8 characters';
    }
      return null;
 };
// No Validation
 String? Function(String?)? novalidation = (String? value) {
 
    if (value!.length == 200)
      return 'error';
    else
      return null;
 };
//  Name Validation
 String? Function(String?)? nameValidation = (String? value) {
 
    if (value!.length < 3)
      return 'Name To Short';
    else
      return null;
 };
// Phone Number Validator
String? Function(String?)? phoneNumberValidator = (String? value) {
if (value!.length!=11) {
  return 'Please Enter Complete Phone Number';
} else if(value.isEmpty) {
  return "Phone Number Can't be Empty";
}
 };
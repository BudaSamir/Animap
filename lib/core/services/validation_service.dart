enum ValidationType {
  name,
  email,
  nationalId,
  phone,
  password,
  confirmPassword
}

class ValidationService {
  ValidationService._privateConstructor();
  static final ValidationService _instance =
      ValidationService._privateConstructor();
  static ValidationService get instance => _instance;

  final String emailRegExp =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  final String passwordRegExp =
      r'(?=[A-Za-z0-9@#$%^&+!=]+$)^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&+!=])(?=.{8,}).*$';
  final String passwordUpperCaseRegExp = r'[A-Z]';
  final String passwordLowerCaseRegExp = r'[a-z]';
  final String passwordDigitsRegExp = r'[0-9]';
  final String passwordSpecialCharRegExp = r'[!@#$%^&*(),.?":{}|<>]';
  // final String nameRegExp = r'^[a-z A-Z]+$';
  final String nameRegExp = r'^[\u0600-\u06FFa-zA-Z\s]+$';
  final String phoneRegExp = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  final String nationalIdRegExp = r'^[1-2]\d{12}[0-9]$';
  final String linkRegExp =
      r'^(https?://)?(www\.)?[A-Za-z0-9]+\.[A-Za-z]{2,}(\S*)$';

  String? validateName(String? name, String type) {
    String? msg;
    RegExp regex = RegExp(nameRegExp);
    if (name!.trim().isEmpty || name == ' ') {
      msg = "Your $type Name is Required";
      return msg;
    } else if (!regex.hasMatch(name)) {
      msg = "Please provide a valid Name";
      return msg;
    } else {
      return null;
    }
  }

  String? validateEmail(String? email) {
    String? msg;
    RegExp regex = RegExp(emailRegExp);
    if (email!.trim().isEmpty || email == ' ') {
      msg = "Your Email is Required!";
      return msg;
    } else if (!regex.hasMatch(email)) {
      msg = "Please provide a valid Email address";
      return msg;
    } else {
      return null;
    }
  }

  String? validateNationalId(String? nationalId) {
    String? msg;
    RegExp regex = RegExp(nationalIdRegExp);
    if (nationalId!.trim().isEmpty || nationalId == ' ') {
      msg = "Your National ID is Required.";
      return msg;
    } else if (!regex.hasMatch(nationalId)) {
      msg = "Please provide a valid National ID.";
      return msg;
    } else if (nationalId.length < 14) {
      msg = "Your National ID must have 14 number.";
      return msg;
    } else {
      return null;
    }
  }

  String? validatePhone(String? phone) {
    String? msg;
    RegExp regex = RegExp(phoneRegExp);
    if (phone!.trim().isEmpty || phone == ' ') {
      msg = "Your Phone is Required";
      return msg;
    } else if (!regex.hasMatch(phone)) {
      msg = "Please provide a valid Phone Number ";
      return msg;
    } else if (phone.length < 11 && phone.length > 4) {
      msg = "Phone Number must be longer Than 4 digits ";
      return msg;
    } else {
      return null;
    }
  }

  String? validatePassword(String? password) {
    String? msg;
    if (password!.trim().isEmpty) {
      msg = "Your password is Required";
      return msg;
    } else if (!password.trim().contains(RegExp(passwordUpperCaseRegExp))) {
      msg = "Password Must Contains UpperCase Letter";
      return msg;
    } else if (!password.trim().contains(RegExp(passwordLowerCaseRegExp))) {
      msg = "Password Must Contains LowerCase Letter";
      return msg;
    } else if (!password.trim().contains(RegExp(passwordDigitsRegExp))) {
      msg = "Password must Contains Digits";
      return msg;
    } else if (!password.trim().contains(RegExp(passwordSpecialCharRegExp))) {
      msg = "Password must Special Character";
      return msg;
    } else if (!password.trim().contains(RegExp(passwordRegExp))) {
      msg = "Please provide a valid Password";
      return msg;
    } else if (password.trim().length < 8 || password.trim().length > 32) {
      msg = "Password Must be between 8 and 32 characters";
      return msg;
    } else {
      return null;
    }
  }

  String? validateConfirmPassword({String? password, String? confirmPassword}) {
    String? msg;
    if (confirmPassword!.trim().isEmpty || confirmPassword == ' ') {
      msg = "Your Confirm Password is Required";
      return msg;
    } else if (confirmPassword.trim() != password!.trim()) {
      msg = "Password doesn't match";
      return msg;
    } else {
      return null;
    }
  }
}

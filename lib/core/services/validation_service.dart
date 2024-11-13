class ValidationService {
  ValidationService._privateConstructor();
  static final ValidationService _instance =
      ValidationService._privateConstructor();
  static ValidationService get instance => _instance;

  final String _emailRegExp =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  final String _passwordRegExp =
      r'(?=[A-Za-z0-9@#$%^&+!=]+$)^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&+!=])(?=.{8,}).*$';
  final String _passwordUpperCaseRegExp = r'[A-Z]';
  final String _passwordLowerCaseRegExp = r'[a-z]';
  final String _passwordDigitsRegExp = r'[0-9]';
  final String _passwordSpecialCharRegExp = r'[!@#$%^&*(),.?":{}|<>]';
  // final String nameRegExp = r'^[a-z A-Z]+$';
  final String _nameRegExp = r'^[\u0600-\u06FFa-zA-Z\s]+$';
  final String _phoneRegExp = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  final String _nationalIdRegExp = r'^[1-2]\d{12}[0-9]$';
  final String _linkRegExp =
      r'^(https?://)?(www\.)?[A-Za-z0-9]+\.[A-Za-z]{2,}(\S*)$';

  final String verificationCodeRegExp = r'^\d{0,1}$';

  String? validateName(String? name, String type) {
    String? msg;
    RegExp regex = RegExp(_nameRegExp);
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
    RegExp regex = RegExp(_emailRegExp);
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
    RegExp regex = RegExp(_nationalIdRegExp);
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
    RegExp regex = RegExp(_phoneRegExp);
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
    } else if (!password.trim().contains(RegExp(_passwordUpperCaseRegExp))) {
      msg = "Password Must Contains UpperCase Letter";
      return msg;
    } else if (!password.trim().contains(RegExp(_passwordLowerCaseRegExp))) {
      msg = "Password Must Contains LowerCase Letter";
      return msg;
    } else if (!password.trim().contains(RegExp(_passwordDigitsRegExp))) {
      msg = "Password must Contains Digits";
      return msg;
    } else if (!password.trim().contains(RegExp(_passwordSpecialCharRegExp))) {
      msg = "Password must Special Character";
      return msg;
    } else if (!password.trim().contains(RegExp(_passwordRegExp))) {
      msg = "Please provide a valid Password";
      return msg;
    } else if (password.trim().length < 8 || password.trim().length > 32) {
      msg = "Password Must be between 8 and 32 characters";
      return msg;
    } else {
      return null;
    }
  }

  String? validateConfirmPassword(String? password, String? confirmPassword) {
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

  String? validateOTP(String? value) {
    RegExp regex = RegExp(verificationCodeRegExp);
    if (value == null || value.isEmpty) {
      return 'Enter a digit';
    }
    if (!regex.hasMatch(value)) {
      return 'Only digits allowed';
    }
    return null;
  }
}

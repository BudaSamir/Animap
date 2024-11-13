class LoginRequest {
  final String email;
  final String password;
  final bool? rememberMe;

  LoginRequest(
      {required this.email, required this.password, required this.rememberMe});

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "rememberMe": rememberMe,
      };
}

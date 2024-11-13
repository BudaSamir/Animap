class LoginResponse {
  final String token;
  final UserData user;

  LoginResponse({required this.token, required this.user});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        token: json["token"],
        user: UserData.fromJson(json["user"]),
      );
}

class UserData {
  final String id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final bool active;
  final List followers;
  final List following;
  final List blockedAccounts;
  final String role;
  final String dateOfBirth;
  final bool public;
  final List pets;
  final String mobileNumber;
  final String countryCode;
  final int points;
  final String? contactInfoVisibility;
  final String? rememberMeToken;
  final String? rememberMeTokenExpiration;

  UserData({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.active,
    required this.followers,
    required this.following,
    required this.blockedAccounts,
    required this.role,
    required this.dateOfBirth,
    required this.public,
    required this.pets,
    required this.rememberMeTokenExpiration,
    required this.rememberMeToken,
    required this.mobileNumber,
    required this.countryCode,
    required this.points,
    required this.contactInfoVisibility,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["_id"],
        username: json["username"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        active: json["active"],
        followers: json["followers"],
        following: json["following"],
        blockedAccounts: json["blockedAccounts"],
        role: json["role"],
        dateOfBirth: json["dateOfBirth"],
        public: json["public"],
        pets: json["pets"],
        points: json["points"],
        rememberMeTokenExpiration: json["rememberMeTokenExpiration"],
        rememberMeToken: json["rememberMeToken"],
        mobileNumber: json["mobileNumber"]["number"],
        countryCode: json["mobileNumber"]["countryCode"],
        contactInfoVisibility: json["contactInfoVisibility"],
      );

  toLocal() {
    // StorageService.instance.write(key: Keys.email, value: success.user.email);
  }

  rememberMe() {}

  token() {}
}

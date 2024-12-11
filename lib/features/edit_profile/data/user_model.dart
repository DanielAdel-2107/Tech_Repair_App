class UserModel {
  final String userName;
  final String userEmail;
  final String userPhoneNumber;

  UserModel({
    required this.userName,
    required this.userEmail,
    required this.userPhoneNumber,
  });

  /// Convert a UserModel instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'fullName': userName,
      'email': userEmail,
      'phoneNumber': userPhoneNumber,
    };
  }

  /// Create a UserModel instance from a JSON map
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userName: json['fristName'] + " " + json['lastName'] as String,
      userEmail: json['email'] as String,
      userPhoneNumber: json['role'] as String,
    );
  }
}

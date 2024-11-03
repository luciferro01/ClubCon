class AuthModel {
  final String id;
  final String email;
  final String? userName;

  AuthModel(this.userName, {required this.id, required this.email});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      json['username'],
      id: json['id'],
      email: json['email'],
    );
  }
}

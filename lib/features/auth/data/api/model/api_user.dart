class ApiUser {
  final String email;
  final String password;
  final String token;

  ApiUser.fromApi(Map<String, dynamic> map)
      : email = map['email'],
        password = map['password'],
        token = map['token'];
}

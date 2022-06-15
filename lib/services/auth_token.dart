class AuthToken {
  bool isLoggedIn = false;
  String token = '';
  String errorMessage = '';
  AuthToken(
      {required this.isLoggedIn,
      required this.token,
      required this.errorMessage});
}

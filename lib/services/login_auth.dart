import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:greenhouse_automation_system/services/auth_token.dart';

Future<void> UserLogin(AuthToken Auth, String email, String password) async {
  final dynamic apiUrl = Uri.parse("http://10.0.2.2:3000/api/auth/login");
  var response = await http.post(
    apiUrl,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': '$email',
      'password': '$password',
    }),
  );
  if (response.statusCode == 400) {
    Auth.errorMessage = response.body;
    return;
  }
  Auth.errorMessage = '';
  Map responseData = jsonDecode(response.body);
  Auth.isLoggedIn = true;
  Auth.token = responseData['token'];
  return;
}

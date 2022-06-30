import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:greenhouse_automation_system/services/auth_token.dart';

Future<void> UserSignUp(
    AuthToken Auth, String name, String email, String password) async {
  final dynamic apiUrl = Uri.parse("http://10.0.2.2:3000/api/auth/register");
  var response = await http.post(
    apiUrl,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': '$name',
      'email': '$email',
      'password': '$password',
    }),
  );
  if (response.statusCode == 400 || response.statusCode == 500) {
    Auth.errorMessage = response.body;
    return;
  }
  Auth.errorMessage = '';
  return;
}

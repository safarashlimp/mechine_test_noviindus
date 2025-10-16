import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mechine_test_noviindus/features/login/data/model/login_model.dart';

abstract class LoginDataSource {
  Future<LoginModel> loginUser({
    required String phone,
    required String countryCode,
  });
}

class LoginDataSourceImpl implements LoginDataSource {
  final http.Client client;

  LoginDataSourceImpl(this.client);

  @override
  Future<LoginModel> loginUser({
    required String phone,
    required String countryCode,
  }) async {
    final response = await client.post(
      Uri.parse('https://frijo.noviindus.in/api/otp_verified'),
      body: {'phone': phone, 'country_code': countryCode},
    );

    if (response.statusCode == 200 || response.statusCode == 202) {
      final json = jsonDecode(response.body);
      return LoginModel.fromJson(json);
    } else {
      throw Exception('Login failed with status: ${response.statusCode}');
    }
  }
}

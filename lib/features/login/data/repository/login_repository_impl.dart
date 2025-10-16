import 'package:mechine_test_noviindus/features/login/data/data_source/login_data_source.dart';
import 'package:mechine_test_noviindus/features/login/domain/entities/login_entity.dart';
import 'package:mechine_test_noviindus/features/login/domain/repository/login_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource dataSource;

  LoginRepositoryImpl(this.dataSource);

  @override
  Future<LoginEntity> login({
    required String phone,
    required String countryCode,
  }) async {
    final loginModel = await dataSource.loginUser(
      phone: phone,
      countryCode: countryCode,
    );

    // Save access token if exists
    if (loginModel.token?.access != null &&
        loginModel.token!.access.isNotEmpty) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', loginModel.token!.access);
    }

    return LoginEntity.fromModel(loginModel);
  }
}

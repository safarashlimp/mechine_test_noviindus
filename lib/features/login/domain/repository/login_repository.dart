import 'package:mechine_test_noviindus/features/login/domain/entities/login_entity.dart';

abstract class LoginRepository {
  Future<LoginEntity> login({
    required String phone,
    required String countryCode,
  });
}

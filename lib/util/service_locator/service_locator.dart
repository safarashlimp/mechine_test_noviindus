import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mechine_test_noviindus/features/login/data/data_source/login_data_source.dart';
import 'package:mechine_test_noviindus/features/login/data/repository/login_repository_impl.dart';
import 'package:mechine_test_noviindus/features/login/domain/repository/login_repository.dart';
import 'package:mechine_test_noviindus/features/login/presentation/bloc/login_bloc.dart';

final getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  final httpClient = http.Client();

  //login

  final loginDataSource = LoginDataSourceImpl(httpClient);
  getIt.registerSingleton<LoginDataSource>(loginDataSource);

  final loginRepository = LoginRepositoryImpl(loginDataSource);
  getIt.registerSingleton<LoginRepository>(loginRepository);

  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(repository: getIt<LoginRepository>()),
  );
}

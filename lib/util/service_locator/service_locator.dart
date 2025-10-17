import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mechine_test_noviindus/features/add_video/data/data_source/add_video_data_source.dart';
import 'package:mechine_test_noviindus/features/add_video/data/repository/add_video_repository_impl.dart';
import 'package:mechine_test_noviindus/features/add_video/domain/repository/add_video_repository.dart';
import 'package:mechine_test_noviindus/features/add_video/presentation/bloc/add_video_bloc.dart';
import 'package:mechine_test_noviindus/features/home/data/data_source/home_data_source.dart';
import 'package:mechine_test_noviindus/features/home/data/repository/home_repository_impl.dart';
import 'package:mechine_test_noviindus/features/home/domain/repository/home_repository.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_bloc.dart';
import 'package:mechine_test_noviindus/features/login/data/data_source/login_data_source.dart';
import 'package:mechine_test_noviindus/features/login/data/repository/login_repository_impl.dart';
import 'package:mechine_test_noviindus/features/login/domain/repository/login_repository.dart';
import 'package:mechine_test_noviindus/features/login/presentation/bloc/login_bloc.dart';
import 'package:mechine_test_noviindus/features/my_feed/data/data_source/my_feed_data_source.dart';
import 'package:mechine_test_noviindus/features/my_feed/data/repository/my_feed_repositiry_impl.dart';
import 'package:mechine_test_noviindus/features/my_feed/domain/repository/my_feed_repository.dart';
import 'package:mechine_test_noviindus/features/my_feed/presentation/bloc/my_feed_bloc.dart';

// final getIt = GetIt.instance;
// Future<void> setupServiceLocator() async {
//   final httpClient = http.Client();

//   //login

//   final loginDataSource = LoginDataSourceImpl(httpClient);
//   getIt.registerSingleton<LoginDataSource>(loginDataSource);

//   final loginRepository = LoginRepositoryImpl(loginDataSource);
//   getIt.registerSingleton<LoginRepository>(loginRepository);

//   getIt.registerFactory<LoginBloc>(
//     () => LoginBloc(repository: getIt<LoginRepository>()),
//   );

//   //home
//   // 2️⃣ Home DataSource
//   getIt.registerLazySingleton<HomeDataSource>(
//     () => HomeDataSourceImpl(
//       baseUrl: "https://frijo.noviindus.in/api/",
//       client: getIt<http.Client>(), // ✅ now it works
//     ),
//   );

//   // 3️⃣ Home Repository
//   getIt.registerLazySingleton<HomeRepository>(
//     () => HomeRepositoryImpl(homeDataSource: getIt<HomeDataSource>()),
//   );

//   // 4️⃣ Home Bloc
//   getIt.registerFactory<HomeBloc>(
//     () => HomeBloc(getIt<HomeRepository>()),
//   );
// }

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // 1️⃣ Create HTTP client
  final httpClient = http.Client();
// Use Dio if you switched to Dio for uploads
  getIt.registerSingleton<http.Client>(httpClient);

  // 2️⃣ Login DataSource & Repository
  final loginDataSource = LoginDataSourceImpl(httpClient);
  getIt.registerSingleton<LoginDataSource>(loginDataSource);

  final loginRepository = LoginRepositoryImpl(loginDataSource);
  getIt.registerSingleton<LoginRepository>(loginRepository);

  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(repository: getIt<LoginRepository>()),
  );

  // 3️⃣ Home DataSource
  getIt.registerLazySingleton<HomeDataSource>(
    () => HomeDataSourceImpl(
      baseUrl: "https://frijo.noviindus.in/api",
      client: httpClient, // ✅ directly use instance
    ),
  );

  // 4️⃣ Home Repository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getIt<HomeDataSource>()),
  );

  // 5️⃣ Home Bloc
  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(getIt<HomeRepository>()),
  );

  // 6️⃣ Add Video DataSource & Repository
  getIt.registerLazySingleton<AddVideoDataSource>(
    () => AddVideoDataSourceImpl(
      baseUrl: "https://frijo.noviindus.in/api",
      client: httpClient, // ✅ directly use instance
    ),
  );    
  getIt.registerLazySingleton<VideoRepository>(
    () => AddVideoRepositoryImpl(dataSource: getIt<AddVideoDataSource>()),
  );
  getIt.registerFactory<AddVideoBloc>(
    () => AddVideoBloc(repository: getIt<VideoRepository>(),
  ));

  getIt.registerLazySingleton<MyFeedDataSource>(
  () => MyFeedDataSourceImpl(
    baseUrl: "https://frijo.noviindus.in/api",
    client: http.Client(),
  ),
);


  getIt.registerLazySingleton<MyFeedRepository>(
    () => MyFeedRepositoryImpl(
      baseUrl: "https://frijo.noviindus.in/api",
      client: httpClient,
    ),
  );

  getIt.registerFactory<MyFeedBloc>(
    () => MyFeedBloc(repository: getIt<MyFeedRepository>()),
  );

  


}


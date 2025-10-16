import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_bloc.dart';
import 'package:mechine_test_noviindus/features/login/presentation/bloc/login_bloc.dart';
import 'package:mechine_test_noviindus/features/login/presentation/view/login.dart';
import 'package:mechine_test_noviindus/util/service_locator/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<LoginBloc>()),
      BlocProvider(create: (context) => getIt<HomeBloc>())
      ],
      child: const MaterialApp(home: LoginPage()),
    );
  }
}

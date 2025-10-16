import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechine_test_noviindus/util/error/error.dart';

import '../../domain/repository/login_repository.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository repository;

  LoginBloc({required this.repository}) : super(const LoginState.initial()) {
    on<FetchAllLogin>(_onFetchAllLogin);
  }

  Future<void> _onFetchAllLogin(
    FetchAllLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());

    try {
      final loginEntity = await repository.login(
        phone: event.phone,
        countryCode: event.countryCode,
      );

      if (loginEntity.status) {
        emit(LoginState.loaded(loginEntity: loginEntity));
      } else {
        emit(LoginState.error(failure: UnknownFailure(loginEntity.message)));
      }
    } catch (e) {
      emit(LoginState.error(failure: UnknownFailure(e.toString())));
    }
  }
}

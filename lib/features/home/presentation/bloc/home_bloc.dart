import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechine_test_noviindus/util/error/error.dart';
import '../../domain/repository/home_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc(this.repository) : super(const HomeState.initial()) {
    on<FetchHomeData>(_onFetchHomeData);
  }

  Future<void> _onFetchHomeData(
      FetchHomeData event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final data = await repository.getHomeData();
      emit(HomeState.loaded(data));
    } catch (e) {
      emit(HomeState.error(UnknownFailure(e.toString())));
    }
  }
}

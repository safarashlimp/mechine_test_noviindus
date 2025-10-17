import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechine_test_noviindus/features/my_feed/domain/repository/my_feed_repository.dart';
import 'package:mechine_test_noviindus/features/my_feed/presentation/bloc/my_feed_event.dart';
import 'package:mechine_test_noviindus/features/my_feed/presentation/bloc/my_feed_state.dart';
import 'package:mechine_test_noviindus/util/error/error.dart';

class MyFeedBloc extends Bloc<MyFeedEvent, MyFeedState> {
  final MyFeedRepository repository;

  MyFeedBloc({required this.repository}) : super(const MyFeedState.initial()) {
    on<FetchMyFeedEvent>(_onFetchFeed);
  }

  Future<void> _onFetchFeed(
    FetchMyFeedEvent event,
    Emitter<MyFeedState> emit,
  ) async {
    emit(const MyFeedState.loading());

    try {
      final feeds = await repository.getMyFeed(
        token: event.token,
        page: event.page,
      );
      emit(MyFeedState.loaded(feeds));
    } catch (e, s) {
      debugPrint('❌ MyFeedBloc error: $e');
      debugPrintStack(stackTrace: s);
      emit(MyFeedState.error(e as UnknownFailure));
    }
  }
}

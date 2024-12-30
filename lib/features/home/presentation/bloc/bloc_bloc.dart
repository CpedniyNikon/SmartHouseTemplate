import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/home/domain/repository/home_repository.dart';

part 'bloc_event.dart';

part 'bloc_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(HomeInitialState()) {
    on<FetchEvent>(_onFetch);
  }

  void _onFetch(FetchEvent event, Emitter<HomeState> emit) {
    _homeRepository.fetch(uuid: 'uuid');
    emit(HomeFetchedState());
  }
}

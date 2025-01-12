import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/domain/repository/home_repository.dart';

part 'bloc_event.dart';

part 'bloc_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository)
      : super(HomeInitialState()) {
    on<FetchEvent>(_onFetch);
    add(FetchEvent(showingChartType: MenuList.overview));
  }

  void _onFetch(FetchEvent event, Emitter<HomeState> emit) {
    _homeRepository.fetch(uuid: 'uuid');
    emit(HomeFetchedState(showingChartType: event.showingChartType));
  }
}

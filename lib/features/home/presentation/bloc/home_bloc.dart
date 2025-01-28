import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final INavigationService _navigationService;

  HomeBloc(this._navigationService)
      : super(HomeInitialState(pageName: PageList.dashboard)) {
    on<PageChangeEvent>(_onPageChange);
  }

  void _onPageChange(PageChangeEvent event, Emitter<HomeState> emit) {
    _navigationService.navigateTo(event.pageName.name);
    emit(HomeInitialState(pageName: event.pageName));
  }

}

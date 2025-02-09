import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  final INavigationService _navigationService;

  HomeBloc(this._navigationService)
      : super(HomeBlocStateInitial(pageName: PageList.dashboard)) {
    on<HomeBlocEventPageChange>(_onPageChange);
  }

  void _onPageChange(HomeBlocEventPageChange event, Emitter<HomeBlocState> emit) {
    _navigationService.navigateTo(event.pageName.name);
    emit(HomeBlocStateInitial(pageName: event.pageName));
  }

}

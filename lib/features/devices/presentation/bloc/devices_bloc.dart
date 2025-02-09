import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'devices_event.dart';

part 'devices_state.dart';

class DevicesBloc extends Bloc<DevicesBlocEvent, DevicesBlocState> {
  DevicesBloc() : super(DevicesBlocStateInitial()) {
    on<DevicesBlocEventFetch>(_onFetch);
  }

  Future<void> _onFetch(DevicesBlocEventFetch event, Emitter<DevicesBlocState> emit) async {
    emit(DevicesBlocStateFetched());
  }
}

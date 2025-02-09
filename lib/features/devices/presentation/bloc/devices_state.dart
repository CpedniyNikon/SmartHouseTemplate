part of 'devices_bloc.dart';

@immutable
sealed class DevicesBlocState {}

final class DevicesBlocStateInitial extends DevicesBlocState {}

final class DevicesBlocStateFetched extends DevicesBlocState{}

part of 'home_bloc.dart';

@immutable
sealed class HomeBlocState {}

final class HomeBlocStateInitial extends HomeBlocState {
  final PageList pageName;

  HomeBlocStateInitial({required this.pageName});
}

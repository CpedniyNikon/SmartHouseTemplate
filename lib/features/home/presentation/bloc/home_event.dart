part of 'home_bloc.dart';

@immutable
sealed class HomeBlocEvent {
  const HomeBlocEvent();
}

final class HomeBlocEventPageChange extends HomeBlocEvent {
  final PageList pageName;

  const HomeBlocEventPageChange({required this.pageName});
}

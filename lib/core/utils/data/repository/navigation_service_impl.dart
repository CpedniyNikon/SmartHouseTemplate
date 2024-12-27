import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';

class NavigationServiceImpl implements INavigationService {
  final GoRouter _router;

  NavigationServiceImpl(this._router);

  @override
  void navigateToHome() {
    _router.go('/home');
  }

  @override
  void navigateToLogin() {
    _router.go('/login');
  }
}
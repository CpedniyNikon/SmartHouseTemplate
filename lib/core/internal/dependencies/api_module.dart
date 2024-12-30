import 'package:vikrf_thesis/features/auth/data/api/auth_app_util.dart';
import 'package:vikrf_thesis/features/auth/data/api/service/mock_service.dart' as auth;
import 'package:vikrf_thesis/features/home/data/api/service/mock_service.dart' as home;
import 'package:vikrf_thesis/features/home/data/api/home_app_util.dart';

class ApiModule {
  static final AuthAppUtil _authApiUtil = AuthAppUtil(auth.MockService());
  static final HomeAppUtil _homeAppUtil = HomeAppUtil(home.MockService());

  static AuthAppUtil authApiUtil() {
    return _authApiUtil;
  }

  static HomeAppUtil homeApiUtil() {
    return _homeAppUtil;
  }
}

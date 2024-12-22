import 'package:vikrf_thesis/features/auth/data/api/auth_app_util.dart';
import 'package:vikrf_thesis/features/auth/data/api/service/mock_service.dart';

class ApiModule {
  static final AuthAppUtil _authApiUtil = AuthAppUtil(MockService());

  static AuthAppUtil authApiUtil() {
    return _authApiUtil;
  }
}

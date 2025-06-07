import 'package:shared_preferences/shared_preferences.dart';
import 'package:vikrf_thesis/features/auth/data/api/auth_app_util.dart';
import 'package:vikrf_thesis/features/auth/data/api/service/mock_service.dart' as auth;
import 'package:vikrf_thesis/features/dashboard/data/api/dashboard_app_util.dart';
import 'package:vikrf_thesis/features/dashboard/data/api/service/mock_service.dart' as dashboard;

class ApiModule {

  static late final SharedPreferences _prefs;
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static final AuthAppUtil _authApiUtil = AuthAppUtil(auth.MockService(), _prefs);
  static final DashboardAppUtil _dashboardAppUtil = DashboardAppUtil(dashboard.MockService());

  static AuthAppUtil authApiUtil() {
    return _authApiUtil;
  }

  static DashboardAppUtil dashboardApiUtil() {
    return _dashboardAppUtil;
  }
}

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vikrf_thesis/features/auth/data/api/request/get_user_body.dart';
import 'package:vikrf_thesis/features/auth/data/api/service/service.dart';
import 'package:vikrf_thesis/features/auth/data/mapper/user_mapper.dart';
import 'package:vikrf_thesis/features/auth/domain/entity/user_entity.dart';

class AuthAppUtil {
  final Service _service;
  final SharedPreferences _prefs;

  AuthAppUtil(this._service, this._prefs);

  Future<UserEntity> login({
    required String email,
    required String password,
  }) async {
    final body =
    GetUserBody(email: email, password: password);
    final result = await _service.login(body);
    _prefs.setString('auth_token', result.token);

    return UserMapper.fromApi(result);
  }

  Future<void> logout({
    required String uuid,
  }) async {
    await _prefs.remove('auth_token');
    await _service.logout(uuid);
  }

  Future<String> hasToken() async {
    final token = _prefs.getString('auth_token') ?? "";
    return token;
  }
}

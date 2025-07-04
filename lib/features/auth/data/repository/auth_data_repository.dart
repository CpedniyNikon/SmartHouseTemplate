import 'package:vikrf_thesis/features/auth/data/api/auth_app_util.dart';
import 'package:vikrf_thesis/features/auth/domain/entity/user_entity.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';

class AuthDataRepository extends AuthRepository {
  final AuthAppUtil _apiUtil;

  AuthDataRepository(this._apiUtil);


  @override
  Future<UserEntity> login({required String email, required String password}) {
    return _apiUtil.login(email: email, password: password);
  }

  @override
  Future<void> logout({required String uuid}) {
    return _apiUtil.logout(uuid: uuid);
  }

  @override
  Future<String> getToken() async {
    return _apiUtil.hasToken();
  }
}
import 'package:vikrf_thesis/features/auth/data/api/model/api_user.dart';
import 'package:vikrf_thesis/features/auth/data/api/request/get_user_body.dart';

abstract class Service {
  Future<ApiUser> login(GetUserBody body);
  Future<void> logout(String uuid);
}

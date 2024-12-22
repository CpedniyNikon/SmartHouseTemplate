import 'package:vikrf_thesis/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login({
    required String email,
    required String password,
  });
}


import 'package:vikrf_thesis/features/auth/data/api/model/api_user.dart';
import 'package:vikrf_thesis/features/auth/domain/entity/user_entity.dart';

class UserMapper {
  static UserEntity fromApi(ApiUser user) {
    return UserEntity(email: user.email, password: user.password);
  }
}

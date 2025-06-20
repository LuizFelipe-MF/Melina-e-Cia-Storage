import 'package:melina/app/models/auth_model.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
}

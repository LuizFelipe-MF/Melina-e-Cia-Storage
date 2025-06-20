// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:melina/app/core/exceptions/repository_exception.dart';
import 'package:melina/app/core/exceptions/unauthorized_exception.dart';
import 'package:melina/app/core/rest_client/custom_dio.dart';
import 'package:melina/app/models/auth_model.dart';
import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;
  AuthRepositoryImpl({
    required this.dio,
  });

  @override
  Future<User> login(String email, String password) async {
    try {
      if (email != 'teste@gmail.com' || password != '12345678') {
        throw UnauthorizedExeption(message: 'Email ou senha incorretos');
      }

      return User(email: email, name: 'Teste');
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedExeption(
            message: e.response?.data['message'] ?? 'Erro ao fazer login');
      }

      throw RepositoryException(message: e.message ?? 'Erro ao fazer login');
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:melina/app/core/exceptions/repository_exception.dart';
import 'package:melina/app/core/exceptions/unauthorized_exception.dart';
import 'package:melina/app/models/auth_model.dart';
import 'package:melina/app/pages/auth/auth_state.dart';
import 'package:melina/app/repositories/auth/auth_repository.dart';

class AuthController extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthController(this._authRepository) : super(AuthState.initial());

  Future<void> clickLogin(String email, String password) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));

      final User user = await _authRepository.login(email, password);

      emit(state.copyWith(status: AuthStatus.success, user: user));
    } on DioException catch (e) {
      emit(state.copyWith(status: AuthStatus.error, errorMessage: e.message));
    } on UnauthorizedExeption catch (e) {
      emit(state.copyWith(status: AuthStatus.error, errorMessage: e.message));
    } on RepositoryException catch (e) {
      emit(state.copyWith(status: AuthStatus.error, errorMessage: e.message));
    }
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import 'package:melina/app/models/auth_model.dart';

part 'auth_state.g.dart';

@match
enum AuthStatus {
  initial,
  loading,
  success,
  error,
}

// ignore: must_be_immutable
class AuthState extends Equatable {
  AuthStatus status;
  User user;
  String errorMessage;

  AuthState({
    required this.status,
    required this.user,
    required this.errorMessage,
  });

  AuthState.initial()
      : status = AuthStatus.initial,
        user = User.empty(),
        errorMessage = '';

  @override
  List<Object?> get props => [status, errorMessage];

  AuthState copyWith({
    AuthStatus? status,
    User? user,
    String? errorMessage,
  }) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

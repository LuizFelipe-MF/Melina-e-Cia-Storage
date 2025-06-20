// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension AuthStatusMatch on AuthStatus {
  T match<T>(
      {required T Function() initial,
      required T Function() loading,
      required T Function() success,
      required T Function() error}) {
    final v = this;
    if (v == AuthStatus.initial) {
      return initial();
    }

    if (v == AuthStatus.loading) {
      return loading();
    }

    if (v == AuthStatus.success) {
      return success();
    }

    if (v == AuthStatus.error) {
      return error();
    }

    throw Exception('AuthStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? initial,
      T Function()? loading,
      T Function()? success,
      T Function()? error}) {
    final v = this;
    if (v == AuthStatus.initial && initial != null) {
      return initial();
    }

    if (v == AuthStatus.loading && loading != null) {
      return loading();
    }

    if (v == AuthStatus.success && success != null) {
      return success();
    }

    if (v == AuthStatus.error && error != null) {
      return error();
    }

    return any();
  }
}

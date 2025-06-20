// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import 'package:melina/app/models/auth_model.dart';
import 'package:melina/app/models/team_model.dart';

part 'home_state.g.dart';

@match
enum HomeStatus {
  initial,
  loading,
  success,
  error,
}

// ignore: must_be_immutable
class HomeState extends Equatable {
  HomeStatus status;
  User user;

  HomeState({
    required this.status,
    required this.user,
  });

  HomeState.initial()
      : status = HomeStatus.initial,
        user = User.empty();
  @override
  List<Object?> get props => [status, user];

  HomeState copyWith({
    HomeStatus? status,
    User? user,
  }) {
    return HomeState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }
}

part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

class AppState extends Equatable {
  final AppStatus status;
  final UserModel? user;

  const AppState._({
    this.user,
    required this.status,
  });

  const AppState.authenticated(UserModel user)
      : this._(user: user, status: AppStatus.authenticated);

  const AppState.unauthenticated()
      : this._(user: null, status: AppStatus.unauthenticated);

  @override
  List<Object?> get props => [status];
}

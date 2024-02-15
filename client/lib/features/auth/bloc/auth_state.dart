part of 'auth_bloc.dart';

enum AuthStatus { authenticated, unauthenticated }

class AuthState extends Equatable {
  final AuthStatus status;
  final UserModel user;

  const AuthState._({
    this.user = UserModel.empty,
    required this.status,
  });

  const AuthState.authenticated(UserModel user)
      : this._(user: user, status: AuthStatus.authenticated);

  const AuthState.unauthenticated()
      : this._(user: UserModel.empty, status: AuthStatus.unauthenticated);

  @override
  List<Object> get props => [status, user];
}

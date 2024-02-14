part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {}

class AppLogoutRequested extends AppEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class AppUserChanged extends AppEvent {
  final UserModel? user;

  AppUserChanged({required this.user});
  @override
  List<Object?> get props => [user];
}

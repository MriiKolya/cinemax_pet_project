import 'dart:async';

import 'package:client/features/auth/data/entity/user_entity.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;
  StreamSubscription<UserEntity?>? _userSubcription;
  AuthBloc({required AuthRepository repository})
      : _repository = repository,
        super(
          repository.currentUser.isNotEmpty
              ? AuthState.authenticated(repository.currentUser)
              : const AuthState.unauthenticated(),
        ) {
    on<AuthUserChanged>(_onUserChanged);
    on<AuthLogoutRequested>(_onLogoutRequested);

    _userSubcription =
        _repository.user.listen((user) => add(AuthUserChanged(user: user)));
  }

  void _onUserChanged(AuthUserChanged event, Emitter<AuthState> emit) {
    emit(event.user.isNotEmpty
        ? AuthState.authenticated(event.user)
        : const AuthState.unauthenticated());
  }

  void _onLogoutRequested(AuthLogoutRequested event, Emitter<AuthState> emit) {
    try {
      unawaited(_repository.logOut());
    } catch (e) {}
  }

  @override
  Future<void> close() {
    _userSubcription?.cancel();
    return super.close();
  }
}

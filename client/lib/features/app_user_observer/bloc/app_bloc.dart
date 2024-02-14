import 'dart:async';

import 'package:client/features/app_user_observer/repository/auth_repository.dart';
import 'package:client/features/login/model/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthRepository _repository;
  // StreamSubscription<UserModel>? _userSubcription;
  AppBloc({required AuthRepository repository})
      : _repository = repository,
        super(
          repository.currentUser != null
              ? AppState.authenticated(repository.currentUser!)
              : const AppState.unauthenticated(),
        ) {
    on<AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
  }

  void _onUserChanged(AppUserChanged event, Emitter<AppState> emit) {
    emit(event.user != null
        ? AppState.authenticated(event.user!)
        : const AppState.unauthenticated());
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_repository.logOut());
  }
}

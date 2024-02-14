// import 'dart:async';

// import 'package:client/core/router/app_router_name.dart';
// import 'package:client/features/app_user_observer/bloc/app_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// FutureOr<String?> Function(BuildContext, GoRouterState) appRedirect({
//   required BuildContext context,
//   required GoRouterState state,
//   required AppBloc authBloc,
// }) {
//   // Проверка, авторизован ли пользователь
//   final loggedIn = authBloc.state.status == AppStatus.authenticated;
//   // Разрешить навигацию на страницу dashboard только
//   // для авторизованных пользователей
//   if (state.matchedLocation == '/home' && !loggedIn) {
//     context.goNamed(AppRouterName.welcomeName);
//   }
//   // Разрешить навигацию на другие страницы для авторизованных пользователей
//   if (!loggedIn) {
//     return null;
//   }
//   // Разрешить навигацию для авторизованных пользователей
//   return null;
// }

import 'package:client/core/router/app_router.dart';
import 'package:client/di/app_dependency_resolver.dart';
import 'package:client/features/app_user_observer/bloc/app_bloc.dart';
import 'package:client/features/app_user_observer/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_kit/theme/dark_theme.dart';

class CinemaxApp extends StatefulWidget {
  const CinemaxApp({super.key});

  @override
  State<CinemaxApp> createState() => _CinemaxAppState();
}

class _CinemaxAppState extends State<CinemaxApp> {
  @override
  void initState() {
    AppDependencyResolver.register();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(repository: GetIt.I<AuthRepository>()),
        ),
      ],
      child: Container(),
    );
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: darkTheme,
      darkTheme: darkTheme,
      routerConfig:
          AppRoutes(authBloc: AppBloc(repository: GetIt.I<AuthRepository>()))
              .router,
    );
  }
}

import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router.dart';
import 'package:client/di/app_dependency_resolver.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        BlocProvider<AuthBloc>(
          create: (context) => DependencyProvider.get<AuthBloc>(),
        ),
      ],
      child: Container(),
    );
    return MaterialApp.router(
      theme: darkTheme,
      darkTheme: darkTheme,
      routerConfig: AppRoutes().router,
    );
  }
}
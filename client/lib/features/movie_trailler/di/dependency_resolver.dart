import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie_trailler/cubit/movie_trailer_cubit.dart';
import 'package:client/features/movie_trailler/data/repositories/movie_trailer_repostitory.dart';

import 'package:dio/dio.dart';

class MovieTrailerDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<MovieTrailerCubit>(
      () => MovieTrailerCubit(
          repository: DependencyProvider.get<MovieTrailerRepository>()),
    );
    DependencyProvider.registerLazySingleton<MovieTrailerRepository>(
      () => MovieTrailerRepository(dio: DependencyProvider.get<Dio>()),
    );
  }
}

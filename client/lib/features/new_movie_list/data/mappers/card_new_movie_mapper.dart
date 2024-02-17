import 'package:client/core/api_config.dart';
import 'package:client/features/new_movie_list/data/entity/new_movie.dart';
import 'package:intl/intl.dart';
import 'package:ui_kit/component/new_movie_card/new_movie_card_model.dart';

extension NewMovieCardMapper on NewMovieEntity {
  NewMovieCardModel toCard() => NewMovieCardModel(
        title: title,
        poster: '${MovieQuery.image}$picture',
        release: releaseDate != null
            ? DateFormat('MMMM d').format(releaseDate!)
            : null,
      );
}

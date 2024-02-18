import 'package:client/features/genre_list/data/entity/genre_entity.dart';

extension GetGenre on GenreEntity {
  String getGenre(int id) => name;
}


// import 'package:client/core/api_config.dart';
// import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
// import 'package:client/features/movie/data/entity/movie.dart';

// extension MovieMapper on MovieDTO {
//   MovieEntity toDomain() => MovieEntity(
//         id: id,
//         title: title,
//         originalTitle: originalTitle,
//         description: description,
//         popularity: popularity,
//         picture: '${MovieQuery.image}$backdropPath',
//         releaseDate: DateTime.parse(releaseDate),
//         voteAverage: voteAverage,
//         genres: genres,
//       );
// }

abstract class MovieQuery {
  static const String baseUrl = 'https://api.themoviedb.org/3/movie/';
  static const String image = 'https://image.tmdb.org/t/p/w300/';
  static const String queryNowPlaying = 'now_playing';
  static const String _apikey = 'c539e23e4012f8d6e348b90f577dd3cf';
  static Map<String, dynamic> queryParametersBase = <String, dynamic>{
    'api_key': MovieQuery._apikey
  };
  // /now_playing?language=en-US&page=1
}

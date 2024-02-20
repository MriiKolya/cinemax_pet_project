class MovieTrailerEntity {
  final String name;
  final String youtubeKey;

  MovieTrailerEntity({
    required this.name,
    required this.youtubeKey,
  });

  factory MovieTrailerEntity.empty() =>
      MovieTrailerEntity(name: '', youtubeKey: '');
}

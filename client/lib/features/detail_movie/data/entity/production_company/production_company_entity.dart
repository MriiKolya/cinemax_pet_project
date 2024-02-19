class ProductionCompanyEntity {
  final int id;
  //logo_path
  final String? logoImage;
  final String name;
  //origin_country
  final String country;

  ProductionCompanyEntity({
    required this.id,
    required this.logoImage,
    required this.name,
    required this.country,
  });
}

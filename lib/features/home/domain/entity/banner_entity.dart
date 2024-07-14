base class BannerEntity {
  const BannerEntity({
    required this.id,
    required this.image,
    required this.link,
  });

  final int id;
  final String image;
  final String link;
}

enum EndPoints {
  banner(path: "/banners.json"),
  product(path: "//products.json"),
  story(path: "/story.json");

  const EndPoints({required this.path});

  final String path;
}

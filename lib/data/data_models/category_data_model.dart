class CategoryDataModel {
  final String id;
  final String svgIconPath;
  final String name;
  final String? imagePath;

  const CategoryDataModel(
      {required this.svgIconPath,
      required this.name,
      required this.id,
      this.imagePath});
}

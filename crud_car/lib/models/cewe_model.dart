class CeweModel {
  String name, description, imageUrl, age;

  CeweModel({
    required this.name,
    required this.imageUrl,
    required this.age,
    this.description = '',
  });
}

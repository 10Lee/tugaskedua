class CeweModel {
  final String name, description, imageUrl, age;

  CeweModel({
    required this.name,
    required this.imageUrl,
    required this.age,
    this.description = '',
  });

  CeweModel copyWith({
    String? name,
    String? description,
    String? imageUrl,
    String? age,
  }) {
    return CeweModel(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      age: age ?? this.age,
      description: description ?? this.description,
    );
  }
}

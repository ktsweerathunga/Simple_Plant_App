class Plant {
  final String name;
  final String imageUrl;
  final String category;
  final String region;
  final String description;
  final bool isEndemic;

  Plant({
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.region,
    required this.description,
    required this.isEndemic,
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      name: json['name'],
      imageUrl: json['imageUrl'],
      category: json['category'],
      region: json['region'],
      description: json['description'],
      isEndemic: json['isEndemic'],
    );
  }

}

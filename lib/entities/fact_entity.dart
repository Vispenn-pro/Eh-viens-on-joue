class FactEntity {
  final String fact;

  FactEntity(
      {required this.fact});

  factory FactEntity.fromJson(Map<String, dynamic> json) {
    return FactEntity(
        fact: json['fact']);
  }
}

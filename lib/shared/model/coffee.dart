import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Coffee {
  final String urlPathCoffee;
  final String categoryCoffee;
  final String titleCoffee;
  final String descriptionCoffee;
  final double priceCoffee; 
  Coffee({
    required this.urlPathCoffee,
    required this.categoryCoffee,
    required this.titleCoffee,
    required this.descriptionCoffee,
    required this.priceCoffee,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlPathCoffee': urlPathCoffee,
      'categoryCoffee': categoryCoffee,
      'titleCoffee': titleCoffee,
      'descriptionCoffee': descriptionCoffee,
      'priceCoffee': priceCoffee,
    };
  }

  factory Coffee.fromMap(Map<String, dynamic> map) {
    return Coffee(
      urlPathCoffee: map['urlPathCoffee'] as String,
      categoryCoffee: map['categoryCoffee'] as String,
      titleCoffee: map['titleCoffee'] as String,
      descriptionCoffee: map['descriptionCoffee'] as String,
      priceCoffee: map['priceCoffee'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coffee.fromJson(String source) => Coffee.fromMap(json.decode(source) as Map<String, dynamic>);
}

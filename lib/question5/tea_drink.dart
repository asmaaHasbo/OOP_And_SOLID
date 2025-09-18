import 'package:flutter_mentor_task1/question5/drink.dart';

/// Represents a Tea drink with specific preparation steps.
class TeaDrink implements Drink {
  final String _name;
  final double _price;
  final String _description;

  TeaDrink({
    required String name,
    required double price,
    required String description,
  })  : assert(name.isNotEmpty, 'Drink name cannot be empty'),
        assert(price >= 0, 'Price cannot be negative'),
        assert(description.isNotEmpty, 'Description cannot be empty'),
        _name = name,
        _price = price,
        _description = description;

  @override
  String get name => _name;

  @override
  double get price => _price;

  @override
  String get description => _description;

  @override
  String prepareDrink() {
    return 'Preparing $_name: Boil water, steep tea leaves for 3 minutes.';
  }
}
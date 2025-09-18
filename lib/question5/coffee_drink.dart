import 'package:flutter_mentor_task1/question5/drink.dart';

class CoffeeDrink implements Drink {
  final String _name;
  final double _price;
  final String _description;

  CoffeeDrink({
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
    return 'Preparing $_name: Grind coffee beans, brew with hot water for 4 minutes.';
  }
}
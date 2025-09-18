/// Abstract interface for drinks to enable polymorphism and drink preparation.
abstract class Drink {
  String get name;
  double get price;
  String get description;
  String prepareDrink(); 
}
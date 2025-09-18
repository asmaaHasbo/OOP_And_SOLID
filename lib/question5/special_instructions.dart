class SpecialInstructions {
  final String name;
  final double _price;
  SpecialInstructions({required this.name, required price})
    : assert(price >= 0, 'Price cannot be negative'),
      _price = price;

  double get price => _price;
}

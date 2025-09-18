import 'package:flutter_mentor_task1/question5/order_service.dart';

class ReportGenerator {
  final OrderServices _repository;

  ReportGenerator(this._repository);

  /// Returns a map of drink names to their completed order counts.
  Map<String, int> getTopSellingDrinks() {
    final Map<String, int> topDrinks = {};
    for (final order in _repository.getAllOrders()) {
      if (order.isCompleted) {
        final drinkName = order.drink.name;
        topDrinks[drinkName] = (topDrinks[drinkName] ?? 0) + 1;
      }
    }
    return topDrinks;
  }

  /// Returns the total number of completed orders.
  int getTotalOrdersServed() {
    return _repository
        .getAllOrders()
        .where((order) => order.isCompleted)
        .length;
  }
}

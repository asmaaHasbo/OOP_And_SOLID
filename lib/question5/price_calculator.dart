// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_mentor_task1/question5/model/order_model.dart';

class PriceCalculator {
  final OrderModel order;
  PriceCalculator({required this.order});

  double calculateOrderPrice() {
    if (order.specialInstructions?.price != null) {
      double totalPrice = order.specialInstructions!.price + order.drink.price;
      return totalPrice;
    } else {
      return order.drink.price;
    }
  }
}

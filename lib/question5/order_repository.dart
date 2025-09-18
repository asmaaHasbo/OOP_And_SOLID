// ignore_for_file: avoid_print

import 'package:flutter_mentor_task1/question5/model/order_model.dart';
import 'package:flutter_mentor_task1/question5/order_service.dart';

class OrderRepository implements OrderServices {
  final List<OrderModel> _orders = [];

  @override
  void addOrder(OrderModel order) {
    _orders.add(order);
  print('${order.customerName}\' order ${order.drink.name} added');
  }

  @override
  void markCompleted(OrderModel order) => order.markCompleted();

  @override
  List<OrderModel> getPendingOrders() =>
      _orders.where((order) => !order.isCompleted).toList();

  @override
  List<OrderModel> getAllOrders() => List.unmodifiable(_orders);
}

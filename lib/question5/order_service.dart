import 'package:flutter_mentor_task1/question5/model/order_model.dart';

abstract class OrderServices {
  void addOrder(OrderModel order);
  void markCompleted(OrderModel order);
  List<OrderModel> getPendingOrders();
  List<OrderModel> getAllOrders();
}

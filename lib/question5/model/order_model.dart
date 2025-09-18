// ignore_for_file: avoid_print
import 'package:flutter_mentor_task1/question5/drink.dart';
import 'package:flutter_mentor_task1/question5/special_instructions.dart';

class OrderModel {
  final String _customerName;
  final Drink drink;
  final SpecialInstructions? specialInstructions;
  bool isCompleted;

  OrderModel({
    required String customerName,
    required this.drink,
    this.specialInstructions,
    required this.isCompleted,
  }) : assert(customerName.isNotEmpty, 'Customer name cannot be empty'),
       _customerName = customerName;

  String get customerName => _customerName;
 

  void markCompleted() {
    isCompleted = true;
    print('Order for $_customerName is completed ${drink.name}');
  }
}

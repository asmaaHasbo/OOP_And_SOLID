// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_mentor_task1/flutter_mentor_task1_app.dart';
import 'package:flutter_mentor_task1/question5/coffee_drink.dart';
import 'package:flutter_mentor_task1/question5/model/order_model.dart';
import 'package:flutter_mentor_task1/question5/order_repository.dart';
import 'package:flutter_mentor_task1/question5/price_calculator.dart';
import 'package:flutter_mentor_task1/question5/report_generator.dart';
import 'package:flutter_mentor_task1/question5/special_instructions.dart';
import 'package:flutter_mentor_task1/question5/tea_drink.dart';

void main() {
  final repository = OrderRepository();
  final reportGenerator = ReportGenerator(repository);

  final teaDrink = TeaDrink(name: 'Tea', price: 50.0, description: 'Hot tea');
  final coffeeDrink = CoffeeDrink(
    name: 'Coffee',
    price: 70.0,
    description: 'Turkish coffee',
  );

  final order1 = OrderModel(
    customerName: 'Ahmed',
    drink: teaDrink,
    specialInstructions: SpecialInstructions(name: 'Extra sugar', price: 10.0),
    isCompleted: true,
  );

  final order2 = OrderModel(
    customerName: 'asmaa',
    drink: coffeeDrink,
    isCompleted: true,
  );

  repository.addOrder(order1);
  repository.addOrder(order2);
  repository.markCompleted(order1); 
  repository.markCompleted(order2); 

  print('Pending Orders: ${repository.getPendingOrders().length}'); // 0
  print(
    'Top Selling: ${reportGenerator.getTopSellingDrinks()}',
  ); // {Tea: 1, Coffee: 1}
  print('Total Served: ${reportGenerator.getTotalOrdersServed()}'); // 2

  final calculator = PriceCalculator(order: order1);
  print('Order Price: ${calculator.calculateOrderPrice()}'); // 6.0
  runApp(FlutterMentorTask1App());
}

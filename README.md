## Smart Ahwa Manager - Project Overview

##  Overview
Smart Ahwa Manager is a system for managing coffee shop orders, allowing users to add orders, mark them as completed, view pending orders, calculate prices, and generate reports on top-selling drinks. The code is written in Dart, emphasizing Object-Oriented Programming (OOP) principles, SOLID principles, and concepts from Object-Oriented Thought Process to ensure flexibility and maintainability.

##  Structure
The application consists of the following classes:

- Drink (Abstract Interface): Defines the core properties of drinks (name, price, description) and a preparation behavior.
- TeaDrink and CoffeeDrink: Concrete classes implementing Drink, representing tea and coffee with specific preparation steps.
- SpecialInstructions: Represents special instructions for an order (e.g., "extra sugar, milk") with a name and price.
- OrderModel: Represents a customer order, containing the customer name, drink, and optional special instructions.
- OrderRepository: A repository for storing and managing orders in memory.
- PriceCalculator: Calculates the total price of an order based on the drink and special instructions.
- ReportGenerator: Generates reports on top-selling drinks and total completed orders.

##  Core Functionalities
- Add Orders: Orders are added via OrderRepository.addOrder, printing a confirmation message (e.g., "Order for Ahmed added: Tea").
- Complete Orders: Orders are marked as completed via OrderModel.markCompleted.
- Dashboard: View pending orders via OrderRepository.getPendingOrders.
- Reports: Generate reports on top-selling drinks and total served orders via ReportGenerator.
- Price Calculation: Calculate the total order price (drink + special instructions) via PriceCalculator.

##  Application of OOP Principles
1. **Encapsulation**:
   - Most fields in classes (Drink, TeaDrink, CoffeeDrink, OrderModel, SpecialInstructions, OrderRepository) are private (prefixed with _) with getters to control access.
   - Example: In OrderModel, fields _customerName, _drink, _specialInstructions, and _isCompleted are private, accessible via getters.
   - In OrderRepository, the _orders field is private, and getAllOrders returns an unmodifiable list (List.unmodifiable).

2. **Inheritance/Implementation**:
   - TeaDrink and CoffeeDrink implement the Drink interface, ensuring they provide name, price, description, and prepareDrink.

3. **Polymorphism**:
   - Polymorphism is achieved through the Drink interface, allowing OrderModel to accept any drink implementing Drink (e.g., TeaDrink, CoffeeDrink).
   - The prepareDrink method exhibits different behaviors based on the drink type:
     - In TeaDrink: "Preparing Tea: Boil water, steep tea leaves for 3 minutes."
     - In CoffeeDrink: "Preparing Coffee: Grind coffee beans, brew with hot water for 4 minutes."
   - Example: Calling order.drink.prepareDrink() in OrderModel.markCompleted produces different preparation steps based on the drink type.

##  Application of SOLID Principles
1. **Single Responsibility Principle (SRP)**:
   - Each class has a single responsibility:
     - TeaDrink and CoffeeDrink: Represent drinks and define preparation steps.
     - OrderModel: Represents an order.
     - OrderRepository: Manages order storage.
     - PriceCalculator: Calculates order prices.
     - ReportGenerator: Generates reports.

2. **Open-Closed Principle (OCP)**:
   - New drinks (e.g., IceTea) can be added by implementing Drink without modifying existing classes (OrderModel, PriceCalculator, ReportGenerator).
   - OrderRepository can be replaced with another implementation (e.g., database-backed) without changing dependent code.

3. **Dependency Inversion Principle (DIP)**:
   - OrderModel depends on the abstract Drink interface rather than concrete classes like TeaDrink.
   - ReportGenerator depends on the OrderServices interface rather than OrderRepository, allowing implementation swaps.

##  Application of Object-Oriented Thought Process
1. **Abstraction**:
   - The Drink interface hides implementation details of drinks (e.g., how name or price is stored) and provides a unified interface (name, price, description, preparation).
   - The OrderServices interface hides storage details (in-memory) and provides a consistent interface for order management.

2. **Modularity**:
   - Classes are clearly separated, with each representing an independent module (e.g., OrderModel for orders, ReportGenerator for reports).
   - Modules can be reused or replaced without affecting the rest of the system.

##  How to Run
1. Create instances of TeaDrink or CoffeeDrink.
2. Create an order using OrderModel, passing a drink and optional special instructions.
3. Use OrderRepository to add and complete orders.
4. Use ReportGenerator to generate reports.
5. Use PriceCalculator to calculate total prices.
<img width="1036" height="317" alt="image" src="https://github.com/user-attachments/assets/4388ee50-6f32-4573-b03a-1b792170ab5c" />

##  Example
```dart
final repository = OrderRepository();
final tea = TeaDrink(name: 'Tea', price: 50.0, description: 'Hot tea');
final order = OrderModel(
  customerName: 'Ahmed',
  drink: tea,
  specialInstructions: SpecialInstructions(name: 'Extra sugar', price: 1.0),



);
repository.addOrder(order); // Prints: Order for Ahmed added: Tea
order.markCompleted(); // Prints tea preparation steps

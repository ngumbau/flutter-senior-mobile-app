import 'package:amitruck_interview/src/localization/string_hardcoded.dart';

/// Order status
enum OrderStatus { confirmed, shipped, delivered }

/// Helper method to get the order status from String
extension OrderStatusString on OrderStatus {
  static OrderStatus fromString(String string) {
    if (string == 'confirmed') return OrderStatus.confirmed;
    if (string == 'shipped') return OrderStatus.shipped;
    if (string == 'delivered') return OrderStatus.delivered;
    throw Exception('Could not parse order status: $string'.hardcoded);
  }
}

/// * The order identifier is an important concept and can have its own type.
typedef OrderID = String;

/// Model class representing an order placed by the user.
class Order {
  const Order({
    required this.id,
    required this.userId,
    required this.orderPickUp,
    required this.orderDropOff,
    required this.orderWeight,
    required this.orderInstructions,
    required this.orderStatus,
    required this.orderDate,
  });

  final OrderID id;
  final String userId;
  final String orderPickUp;
  final String orderDropOff;
  final double orderWeight;
  final String orderInstructions;

  final OrderStatus orderStatus;
  final DateTime orderDate;
}

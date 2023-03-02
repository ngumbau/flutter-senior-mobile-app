import 'package:amitruck_interview/src/features/orders/domain/order.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// API for reading, watching and writing local order data
abstract class LocalOrderRepository {
  Future<List<Order>> fetchOrdersList();

  Stream<List<Order>> watchOrdersList();

  Future<Order?> getOrder(String orderId);
}

final localOrderRepositoryProvider = Provider<LocalOrderRepository>((ref) {
  // * Override this in the main method
  throw UnimplementedError();
});

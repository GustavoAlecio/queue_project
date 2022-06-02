import 'package:flutter_test/flutter_test.dart';
import 'package:queue_project/app/queue/domain/entities/value_objects/order.dart';
import 'package:queue_project/app/queue/infra/adapters/json_to_order.dart';

void main() {
  test("deve converter um map em um obj do tipo order", () {
    final order = JsonToOrder.fromMap({
      "id": "dhuasdha",
      "position": 1,
      "status": "waiting",
      "timestamp": "2022-06-01 10:11:30",
    });

    expect(order, isA<Order>());

    expect(order.status, OrderStatus.waiting);
  });
}

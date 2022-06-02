import 'package:flutter_test/flutter_test.dart';
import 'package:queue_project/app/queue/domain/entities/queue_entity.dart';
import 'package:queue_project/app/queue/domain/entities/value_objects/order.dart';
import 'package:queue_project/app/queue/infra/adapters/json_to_queue.dart';

void main() {
  test("deve converter um map em um obj do tipo QueueEntity", () {
    final order = JsonToQueue.fromMap({
      "id": "dhuasdha",
      "title": "title",
      "abbr": "sa",
      "priority": 1,
      "orders": [
        {
          "id": "dhuasdha",
          "position": 1,
          "status": "waiting",
          "timestamp": "2022-06-01 10:11:30",
        }
      ]
    });

    expect(order, isA<QueueEntity>());
    expect(order.title, "title");
    expect(order.priority, 1);
    expect(order.orders.first.status, OrderStatus.waiting);
  });
}

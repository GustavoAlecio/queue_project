import 'package:queue_project/app/queue/domain/entities/value_objects/order.dart';

class JsonToOrder {
  static Order fromMap(dynamic json) {
    return Order(
      id: json["id"],
      position: json["position"],
      timestamp: DateTime.parse(json["timestamp"]),
      status: OrderStatus.values
          .firstWhere((element) => element.name == json["status"]),
    );
  }
}

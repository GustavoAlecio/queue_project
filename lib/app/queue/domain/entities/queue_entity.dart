import 'package:equatable/equatable.dart';
import 'package:queue_project/app/queue/domain/entities/value_objects/order.dart';

class QueueEntity extends Equatable {
  final String id;
  final String title;
  final String abbr;
  final int priority;
  final List<Order> orders;
  const QueueEntity({
    required this.id,
    required this.title,
    required this.abbr,
    required this.priority,
    required this.orders,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        abbr,
        priority,
        orders,
      ];
}

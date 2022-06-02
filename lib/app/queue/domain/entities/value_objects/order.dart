import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final String id;
  final int position;
  final DateTime timestamp;
  final OrderStatus status;

  const Order({
    required this.id,
    required this.position,
    required this.timestamp,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        position,
        timestamp,
        status,
      ];
}

enum OrderStatus {
  waiting,
  attending,
  notAnswered,
}

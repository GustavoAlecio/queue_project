import 'package:queue_project/app/queue/domain/entities/queue_entity.dart';
import 'package:queue_project/app/queue/domain/repositories/queue_repository.dart';
import 'package:queue_project/app/queue/infra/datasource/queue_datasource.dart';

import '../adapters/json_to_queue.dart';

class QueueRepository implements IQueueRepository {
  final IQueueDatasource datasource;

  QueueRepository(this.datasource);
  @override
  Stream<List<QueueEntity>> getAllQueues() {
    final stream = datasource.getAllQueues();
    return stream.map(_convert);
  }

  List<QueueEntity> _convert(List<Map> list) {
    return list.map(JsonToQueue.fromMap).toList();
  }
}

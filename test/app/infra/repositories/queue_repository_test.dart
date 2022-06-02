import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:queue_project/app/queue/domain/entities/queue_entity.dart';
import 'package:queue_project/app/queue/infra/repositories/queue_repository.dart';

import '../../../mock_dependencies.dart/queue_repository_mock.dart';

void main() {
  test("deve retornar uma lista de QueueEntity", () {
    final datasource = IQueueDatasourceMock();
    when(() => datasource.getAllQueues()).thenAnswer((_) => Stream.value(
          [
            {
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
            }
          ],
        ));

    final repository = QueueRepository(datasource);
    final result = repository.getAllQueues();

    expect(result, emits(isA<List<QueueEntity>>()));
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:queue_project/app/queue/domain/entities/queue_entity.dart';
import 'package:queue_project/app/queue/domain/usecases/get_all_queues.dart';

import '../../../mock_dependencies.dart/get_all_queues_mock.dart';
import '../../../mock_dependencies.dart/queue_entity_mock.dart';

void main() {
  test('Deve retornar uma lista de QueueEntity', () {
    final repository = QueueRepositoryMock();
    final entity = QueueEntityMock();
    when(() => repository.getAllQueues())
        .thenAnswer((_) => Stream.value([entity]));
    final usecase = GetAllQueues(repository);

    final result = usecase.call();

    expect(result, emits(isA<List<QueueEntity>>()));
  });
}

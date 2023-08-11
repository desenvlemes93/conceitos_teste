import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:teste_unitarios/model/item.dart';
import 'package:teste_unitarios/repository/item_repository.dart';
import 'package:teste_unitarios/services/item_service.dart';

class ItemRepositoryFake extends Mock implements IItemRepository {}

void main() {
  late IItemRepository itemRepository;
  setUp(() {
    itemRepository = ItemRepositoryFake();
  });

  group('Item Service Geral', () {
    test(
      'Buscar todos os itens',
      () async {
        when(() => itemRepository.buscarTodos())
            .thenAnswer((_) async => <Item>[]);
        var service = ItemService(repository: itemRepository);
        final items = await service.buscarTodos();
        expect(items, <Item>[]);
      },
    );
    test(
      'Buscar Exception',
      () async {
        when(() => itemRepository.buscarTodos()).thenThrow((Exception()));
        var service = ItemService(repository: itemRepository);
        final call = service.buscarTodos;
        expect(() => call(), throwsException);
      },
    );
    test(
      'Buscar por ID any',
      () async {
        when(() => itemRepository.buscarPorID(any()))
            .thenReturn(Item(nome: 'RII', preco: 100));
        var service = ItemService(repository: itemRepository);
        var item = service.buscarTodosId(33333);
        expect(item, isNotNull);
      },
    );
    test(
      'Buscar por ID any verify',
      () async {
        when(() => itemRepository.buscarPorID(any()))
            .thenReturn(Item(nome: 'RII', preco: 100));
        var service = ItemService(repository: itemRepository);
        var item = service.buscarTodosId(33333);

        verify(
          () => itemRepository.buscarPorID(2),
        ).called(1);
        expect(item, isNotNull);
      },
    );
  });
}

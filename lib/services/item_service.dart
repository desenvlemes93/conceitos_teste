import 'package:teste_unitarios/model/item.dart';
import 'package:teste_unitarios/repository/item_repository.dart';

class ItemService {
  IItemRepository repository;
  ItemService({
    required this.repository,
  });

  Future<List<Item>> buscarTodos() => repository.buscarTodos();
  List<Item> buscarTodosSync() => repository.buscarTodosAsSync();
  Item buscarTodosId(int id) => repository.buscarPorID(2);
}

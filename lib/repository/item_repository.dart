import 'package:teste_unitarios/model/item.dart';

abstract class IItemRepository {
  Future<List<Item>> buscarTodos();
  List<Item> buscarTodosAsSync();
  Item buscarPorID(int id);
}

class ItemRepository implements IItemRepository {
  @override
  Item buscarPorID(int id) => Item(nome: 'Iphone', preco: 10000);

  @override
  Future<List<Item>> buscarTodos() async {
    var items = [
      Item(nome: 'Arroz', preco: 50),
      Item(nome: 'Celular', preco: 5000),
      Item(nome: 'Feijao', preco: 30),
    ];

    await Future.delayed(Duration(seconds: 5));
    return items;
  }

  @override
  List<Item> buscarTodosAsSync() {
    var items = [
      Item(nome: 'Arroz', preco: 50),
      Item(nome: 'Celular', preco: 5000),
      Item(nome: 'Feijao', preco: 30),
    ];

    return items;
  }
}

import 'package:test/test.dart';
import 'package:teste_unitarios/model/item.dart';
import 'package:teste_unitarios/repository/item_repository.dart';

void main() {
  test(
    'Buscar todos asyncrono forma 1',
    () async {
      // preparacao

      var repository = ItemRepository();

      //Execucao
      var items = await repository.buscarTodos();

      expect(items, isNotEmpty);
    },
  );
  test(
    'Buscar todos asyncrono forma 2',
    () async {
      // preparacao

      var repository = ItemRepository();

      //Execucao
      var buscarTodos = repository.buscarTodos;

      expect(buscarTodos(), completion(isNotEmpty));
    },
  );
  test(
    'Buscar item por id',
    () async {
      // preparacao

      var repository = ItemRepository();

      //Execucao
      var item = repository.buscarPorID(1);

      expect(item,allOf([
        isNotNull,
        equals(Item(nome: 'Iphone', preco: 10000))
      ]));
    },
  );
}

import 'package:teste_unitarios/model/item.dart';

class Carrinho {
  List<Item> items;

  Carrinho({
    required this.items,
  });

  double calcularValorTotal() {
    if (items.isEmpty) {
      throw CarrinhoException();
    }
    var total = 0.0;
    for (var i = 0; i < items.length; i++) {
      total += items[i].preco;
    }

    return total;
  }
}

class CarrinhoException implements Exception {}

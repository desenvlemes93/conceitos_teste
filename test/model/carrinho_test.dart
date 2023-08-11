import 'package:test/test.dart';
import 'package:teste_unitarios/model/carrinho.dart';
import 'package:teste_unitarios/model/item.dart';

void main() {
  test('carrinho ...', () async {
    var items = [
      Item(nome: 'Arroz', preco: 200),
      Item(nome: 'Celular', preco: 500),
      Item(nome: 'internet', preco: 300),
    ];
    final carrrinho = Carrinho(items: items);

    final totalCarrinho = carrrinho.calcularValorTotal();

    expect(totalCarrinho, 1000);
  });

  group(
    'Grupo Teste Igualdes',
    () {
      test(
        'Teste de Igualdade',
        () {
          Item(nome: 'Celular', preco: 1000);
          var items = [
            Item(nome: 'Arroz', preco: 200),
            Item(nome: 'Celular', preco: 1000),
            Item(nome: 'internet', preco: 300),
          ];
          final carrrinho = Carrinho(items: items);

          expect(
              carrrinho.items,
              contains(
                Item(nome: 'Celular', preco: 1000),
              ));
        },
      );
      test(
        'Teste de Igualdade LIst',
        () {
          Item(nome: 'Celular', preco: 1000);
          var items = [
            Item(nome: 'Arroz', preco: 200),
            Item(nome: 'Celular', preco: 1000),
            Item(nome: 'internet', preco: 300),
          ];
          final carrrinho = Carrinho(items: items);

          expect(
              carrrinho.items,
              contains(
                Item(nome: 'Celular', preco: 1000),
              ));
        },
      );
      (test(
        'Teste de Exception',
        () {
          var items = [];
          final carrrinho = Carrinho(items: []);
          var call = carrrinho.calcularValorTotal;

          //  expect(() => call(), isA<List<Item>>());
          //expect(() => call(), throwsException);
          expect(() => call(), throwsA(isA<CarrinhoException>()));
        },
      ));
    },
  );
}

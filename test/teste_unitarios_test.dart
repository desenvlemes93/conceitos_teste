import 'package:test/test.dart';
import 'package:teste_unitarios/model/carrinho.dart';
import 'package:teste_unitarios/model/item.dart';

void main() {
  // test('calculate', () {
  //   expect(calculate(), 42);
  // });

  group(
    "Teste d Grupo",
    () {
      test(
          'Teste do grupo 1',
          () => () {
                var items = [
                  Item(nome: 'Arroz', preco: 2),
                  Item(nome: 'Celular', preco: 500),
                  Item(nome: 'internet', preco: 300),
                ];
                final carrrinho = Carrinho(items: items);

                final totalCarrinho = carrrinho.calcularValorTotal();

                expect(totalCarrinho, 55);
              });
    },
  );
}

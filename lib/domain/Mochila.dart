
import 'Item.dart';
import 'Bolsa.dart';
class Mochila extends Bolsa{
  Mochila(String nome) : super(nome, Item.GRANDE);

  @override
  double get peso => super.calcularPeso() + 0.5;

}
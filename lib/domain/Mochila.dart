import 'package:composite_bolsa/domain/Bolsa.dart';
import 'package:composite_bolsa/domain/Item.dart';


class Mochila extends Bolsa{
  Mochila(String nome) : super(nome, Item.MEDIO);

  @override
  double get peso => super.calcularPeso() + 0.5;

}
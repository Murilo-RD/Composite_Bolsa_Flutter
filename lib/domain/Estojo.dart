


import 'Bolsa.dart';
import 'Item.dart';

class Estojo extends Bolsa{
  Estojo(String nome) : super(nome, Item.MEDIO);

  @override
  double get peso => super.calcularPeso() + 0.3;

}
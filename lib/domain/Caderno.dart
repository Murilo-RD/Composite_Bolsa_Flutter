

import 'Item.dart';

class Caderno extends Item{
  Caderno(String nome) : super(nome, Item.MEDIO);

  @override
  double get peso => 0.3;


}
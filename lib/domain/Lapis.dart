

import 'package:Composite_bolsa/domain/Item.dart';

class Lapis extends Item{
  Lapis(String nome) : super(nome, Item.MEDIO);

  @override
  double get peso => 0.010;


}


import 'package:Composite_bolsa/domain/Item.dart';

class Notebook extends Item{
  Notebook(String nome) : super(nome, Item.MEDIO);

  @override
  double get peso =>  2.5;

}
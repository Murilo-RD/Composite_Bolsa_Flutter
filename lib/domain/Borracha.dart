import 'Item.dart';

class Borracha extends Item{
  Borracha(String nome) : super(nome, Item.PEQUENO);

  @override
  double get peso => 0.035;

}
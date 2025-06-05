
import 'package:composite_bolsa/domain/Item.dart';

abstract class Bolsa extends Item{
  late List<Item> _items;

  Bolsa(super.nome, super.tamanho);

  void adicionarItem(Item novoItem){
    this._items.add(novoItem);
  }

  void removerItem(Item item){
    this._items.remove(item);
  }


  double calcularPeso(){
    double peso = 0;
    _items.forEach((item){
      peso = peso + item.peso;
    });
    return peso;
  }

}
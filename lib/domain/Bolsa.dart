
import 'package:composite_bolsa/domain/Item.dart';

class Bolsa extends Item{
  late List<Item> _items;

  Bolsa(super.nome){
    this.peso = 2;
  }

  void adicionarItem(Item novoItem){
    this._items.add(novoItem);
  }

  void removerItem(Item item){
    this._items.remove(item);
  }

  




}
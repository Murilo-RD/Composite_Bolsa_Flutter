


import 'Item.dart';

abstract class Bolsa extends Item{
  late List<Item> _itens;

  Bolsa(super.nome, super.tamanho){
    _itens = [];

  }

  void adicionarItem(Item novoItem){
    this._itens.add(novoItem);
  }

  void removerItem(Item item){
    this._itens.remove(item);
  }


  List<Item> get itens => _itens;

  double calcularPeso(){
    double peso = 0;
    _itens.forEach((item){
      peso = peso + item.peso;
    });
    return peso;
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../GerenciadorDeTelas/GerenciadorDeTelas.dart';
import '../domain/Bolsa.dart';
import '../domain/Borracha.dart';
import '../domain/Caderno.dart';
import '../domain/Estojo.dart';
import '../domain/Item.dart';
import '../domain/Lapis.dart';
import '../domain/Mochila.dart';
import '../domain/Notebook.dart';

class Itemlist extends StatelessWidget {
  const Itemlist(this._item, this._itemPai, this._onDelete, {super.key});

  final Item _item;
  final Bolsa _itemPai;
  final Function(Item, Bolsa) _onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Slidable(
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          extentRatio: 0.30,
          children: [
            SlidableAction(
              onPressed: (_) => _onDelete(_item, _itemPai),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue
          ),
          padding: const EdgeInsets.all(16),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                getImage(_item),
                height: 100,
                width: 100,
              ),
              SizedBox(width: 20),
              Column(

                children: [
                  Text(
                    _item.nome,
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                  Text(
                    textPeso(),
                    style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String textPeso(){
    if(_item.peso > 1){
      return "Peso(Kg): ${_item.peso.toStringAsPrecision(2)}";
    }else{
      return "Peso(g): ${(_item.peso * 1000).toStringAsFixed(2)}";
    }
  }


  String getImage(Item item) {
    switch (item.runtimeType) {
      case Mochila:
        return "../../src/images/mochila.png";
      case Estojo:
        return "../../src/images/estojo.png";
      case Caderno:
        return "../../src/images/caderno.png";
      case Notebook:
        return "../../src/images/notebook.png";
      case Lapis:
        return "../../src/images/lapis.png";
      case Borracha:
        return "../../src/images/borracha.png";
    }
    return "";
  }
}

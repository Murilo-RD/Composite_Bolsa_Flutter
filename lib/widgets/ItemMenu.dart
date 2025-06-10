import 'package:composite_bolsa/domain/Bolsa.dart';
import 'package:composite_bolsa/domain/Item.dart';
import 'package:composite_bolsa/domain/Mochila.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenu {
  Bolsa _itemPai;

  ItemMenu(this._itemPai);

  Widget menuItem(Function contrutor, String image) {
    return Container(
      width: 500,
      height: 500,
      child: Column(
        children: [
          Image.network(
            image,
            width: 300,
            height: 300,
          ),
          ElevatedButton(
            onPressed: (){contrutor();},
            child: Text(
              "Adicionar Item",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          )
        ],
      ),
    );
  }

  List<Widget> getList() {
    List<Widget> list = [];
    list.add(menuItem(()=> new Mochila("Mochila"),"../../src/images/download.jpeg"));
    list.add(menuItem(()=> new Mochila("Mochila"),'https://vulcabras.vtexassets.com/arquivos/ids/288622-800-800?v=638472322022330000&width=800&height=800&aspect=true'));
    list.add(menuItem(()=> new Mochila("Mochila"),'https://vulcabras.vtexassets.com/arquivos/ids/288622-800-800?v=638472322022330000&width=800&height=800&aspect=true'));
    return list;
  }
}

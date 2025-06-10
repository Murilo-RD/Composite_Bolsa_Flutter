
import 'package:Composite_bolsa/GerenciadorDeTelas/GerenciadorDeTelas.dart';
import 'package:Composite_bolsa/domain/Borracha.dart';
import 'package:Composite_bolsa/domain/Caderno.dart';
import 'package:Composite_bolsa/domain/Estojo.dart';
import 'package:Composite_bolsa/domain/Lapis.dart';
import 'package:Composite_bolsa/domain/Mochila.dart';
import 'package:Composite_bolsa/domain/Notebook.dart';
import 'package:Composite_bolsa/GerenciadorDeTelas/GerenciadorDeTelas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenu {
  ItemMenu(this._gerTelas);

 late GerenciadorDeTelas _gerTelas;

  Widget menuItem(Function contrutor, String image) {
    return SizedBox(
      height: 500,
      width: 400,
      child: Column(
        children: [
          Image.network(image,height: 400,width: 400,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: (){contrutor();},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ Icon(Icons.add_box_outlined,color: Colors.white,size: 40,),
                    SizedBox(width: 10,),
                    Text(
                      "Adicionar Item",
                      style: TextStyle(color: Colors.white,fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getList(int tamanho) {
    List<Widget> list = [];
    switch (tamanho){
      case 1:
        list.add(menuItem((){_gerTelas.addBolsa(new Mochila("Mochila"));},"../../src/images/mochila.png"));
        list.addAll(getList(tamanho+1));
      case 2:
        list.add(menuItem((){_gerTelas.addBolsa(new Estojo("Estojo"));},"../../src/images/estojo.png"));
        list.add(menuItem((){_gerTelas.addItem(new Caderno("Caderno"));},"../../src/images/caderno.png"));
        list.add(menuItem((){_gerTelas.addItem(new Notebook("Notebook"));},"../../src/images/notebook.png"));
        list.addAll(getList(tamanho+1));
      case 3:
        list.add(menuItem((){_gerTelas.addItem(new Lapis("Lapis"));},"../../src/images/lapis.png"));
        list.add(menuItem((){_gerTelas.addItem(new Borracha("Borracha"));},"../../src/images/borracha.png"));
        list.addAll(getList(tamanho+1));
      default:
        return list;

    }
    return list;
  }
}

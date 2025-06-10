import 'package:Composite_bolsa/domain/Bolsa.dart';
import 'package:Composite_bolsa/domain/Item.dart';
import 'package:Composite_bolsa/telas/List_tela.dart';
import 'package:Composite_bolsa/telas/Tela_principal.dart';
import 'package:Composite_bolsa/widgets/GridItens.dart';
import 'package:Composite_bolsa/widgets/ItemMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/Mochila.dart';
import '../widgets/ItemList.dart';

class GerenciadorDeTelas extends ChangeNotifier {
  late Bolsa _bolsaPrincipal;
  late ItemMenu _itemMenuController;
  List<GridItens> _grids = [];
  late TelaPrincipal _telaPrincipal;

  GerenciadorDeTelas(this._bolsaPrincipal) {
    _itemMenuController = new ItemMenu(this);
    _telaPrincipal = new TelaPrincipal(this);
    pushGrid(_bolsaPrincipal);
  }


  Bolsa get bolsaPrincipal => _bolsaPrincipal;

  void rodarApp() {
    runApp(
      MaterialApp(
        home: _telaPrincipal,
        debugShowCheckedModeBanner: false,
      ),
    );
  }

  void pushGrid(Bolsa bolsa) {
    _grids.add(
        GridItens(this, bolsa, _itemMenuController.getList(bolsa.tamanho + 1)));
    notifyListeners();
  }

  void popGrid() {
    _grids.removeLast();
    notifyListeners();
  }

  void addItem(Item item) {
    _grids.last.itemPai.adicionarItem(item);
    notifyListeners();
  }

  void addBolsa(Bolsa bolsa) {
    addItem(bolsa);
    pushGrid(bolsa);
    notifyListeners();
  }

  GridItens getGrid() {
    return _grids.last;
  }

  void onDelete(Item item, Bolsa bolsa) {
    if (item != _bolsaPrincipal) {
      bolsa.removerItem(item);
      notifyListeners();
    }
  }

  List<Widget> getListItens(Bolsa bolsa) {
    List<Widget> list = [];
    if (bolsa == _bolsaPrincipal) {
      list.add(Itemlist(bolsa, bolsa, onDelete));
    }
    bolsa.itens.forEach((item) {
      list.add(Padding(padding: EdgeInsets.only(left: 20),child:Itemlist(item, bolsa, onDelete)));
      if (item is Bolsa) {
        list.add(
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: getListItens(item),
            ),
          ),
        );
      }
    });
    return list;
  }

  Widget returnButton(BuildContext context) {
    if (_grids.length > 1) {
      return IconButton(
        onPressed: () {
          popGrid();
        },
        icon: Icon(Icons.arrow_back_sharp),
        color: Colors.white,
      );
    }
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListTela(this)),
        );
      },
      icon: Icon(Icons.remove_red_eye_sharp),
      color: Colors.white,
    );
  }
}

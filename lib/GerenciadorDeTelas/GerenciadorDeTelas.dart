

import 'package:Composite_bolsa/domain/Bolsa.dart';
import 'package:Composite_bolsa/widgets/GridItens.dart';
import 'package:Composite_bolsa/widgets/ItemMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GerenciadorDeTelas{

  late Bolsa _bolsaPrincipal;
  late ItemMenu _itemMenuController;
  List<GridItens> _grids = [];

  GerenciadorDeTelas(this._bolsaPrincipal){
    _itemMenuController = new ItemMenu(this);
    pushGrid(_bolsaPrincipal);
  }

  void pushGrid(Bolsa bolsa){
    _grids.add(GridItens(bolsa,_itemMenuController.getList(bolsa.tamanho+1)));
  }

  void popGrid(){
    _grids.removeLast();
  }


  GridItens getGrid(){
    return _grids.last;
  }



}
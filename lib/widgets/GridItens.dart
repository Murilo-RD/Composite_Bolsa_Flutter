import 'package:Composite_bolsa/domain/Bolsa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GerenciadorDeTelas/GerenciadorDeTelas.dart';

class GridItens extends StatefulWidget {
  const GridItens(this._gerTelas,this._itemPai, this._list, {super.key});

  final GerenciadorDeTelas _gerTelas;
  final List<Widget> _list;
  final Bolsa _itemPai;

  Bolsa get itemPai => _itemPai;

  @override
  State<GridItens> createState() => _GridItensState();
}

class _GridItensState extends State<GridItens> {

  void initState() {
    super.initState();

    widget._gerTelas.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.backpack,
              size: 40,
              color: Colors.blue,
            ),
            Text(
              widget._itemPai.nome + " - ${widget._itemPai.itens.length}",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: widget._list.length,
            itemBuilder: (context, index) => widget._list.elementAt(index),
          ),
        ),
      ],
    );
  }
}
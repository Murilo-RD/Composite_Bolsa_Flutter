

import 'package:Composite_bolsa/domain/Bolsa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridItens extends StatelessWidget {
  GridItens(this._itemPai, this._list, {super.key});

  final List<Widget> _list;
  final Bolsa _itemPai;

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
              _itemPai.nome + " - ${_itemPai.itens.length}",
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
            itemCount: _list.length,
            itemBuilder: (context, index) => _list.elementAt(index),
          ),
        ),
      ],
    );
  }
}

import 'package:composite_bolsa/widgets/ItemMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridItens extends StatelessWidget {
  GridItens(this._list,{super.key});
  List<Widget> _list;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: _list.length,
      itemBuilder: (context, index)=>_list.elementAt(index),
    );
  }
}

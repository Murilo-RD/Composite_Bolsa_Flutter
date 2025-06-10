

import 'package:Composite_bolsa/GerenciadorDeTelas/GerenciadorDeTelas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal(this._gerTelas,{super.key});
  GerenciadorDeTelas _gerTelas;


  GerenciadorDeTelas get gerTelas => _gerTelas;

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.backpack,size: 40,color: Colors.white,),
                Text(
                  "Monte Seu Kit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            backgroundColor: Color(0xFF4A90E2),
        ),
        body: widget.gerTelas.getGrid()
      ),
    );
    ;
  }


}

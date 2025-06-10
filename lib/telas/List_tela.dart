import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GerenciadorDeTelas/GerenciadorDeTelas.dart';

class ListTela extends StatefulWidget {
  ListTela(this._gerTelas, {super.key});

  GerenciadorDeTelas _gerTelas;


  GerenciadorDeTelas get gerTelas => _gerTelas;

  @override
  State<ListTela> createState() => _ListTelaState();
}

class _ListTelaState extends State<ListTela> {
  void _listenerDoGerenciador() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    widget._gerTelas.addListener(_listenerDoGerenciador);
  }

  @override
  void dispose() {
    widget._gerTelas.removeListener(_listenerDoGerenciador);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.backpack,
                size: 40,
                color: Colors.white,
              ),
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
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: widget.gerTelas.getListItens(widget.gerTelas.bolsaPrincipal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

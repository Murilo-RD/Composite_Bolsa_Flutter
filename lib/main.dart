
import 'package:Composite_bolsa/GerenciadorDeTelas/GerenciadorDeTelas.dart';
import 'package:Composite_bolsa/domain/Mochila.dart';
import 'package:Composite_bolsa/telas/Tela_principal.dart';
import 'package:flutter/material.dart';

void main() {
  GerenciadorDeTelas gerenciadorDeTelas= new GerenciadorDeTelas(new Mochila("Mochila"));

  runApp(
    MaterialApp(
      home: TelaPrincipal(gerenciadorDeTelas),
      debugShowCheckedModeBanner: false,
    ),
  );
}
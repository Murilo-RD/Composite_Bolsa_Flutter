
import 'package:Composite_bolsa/GerenciadorDeTelas/GerenciadorDeTelas.dart';
import 'package:Composite_bolsa/domain/Mochila.dart';


void main() {
  GerenciadorDeTelas gerenciadorDeTelas= new GerenciadorDeTelas(new Mochila("Mochila"));
  gerenciadorDeTelas.rodarApp();

}
import 'package:composite_bolsa/widgets/GridItens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

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
            title: Text(
              "Monte Seu Kit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            backgroundColor: Color(0xFF4A90E2),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridItens(),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

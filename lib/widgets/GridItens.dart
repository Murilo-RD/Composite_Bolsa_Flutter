import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridItens extends StatelessWidget {
  const GridItens({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (context, index){
        return Container(
          height: 1000,
          width: 1000,
          child: Column(
            children: [
              Image.network('https://vulcabras.vtexassets.com/arquivos/ids/288622-800-800?v=638472322022330000&width=800&height=800&aspect=true',height: 500,width: 500,),
              ElevatedButton(onPressed: (){}, child: Text("Adicionar item na Bolsa"),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white),)
            ],
          ),
        );
      },
    );
  }
}

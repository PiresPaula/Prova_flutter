import 'package:flutter/material.dart';
import '../components/geracao.dart';
import '../data/generations.dart';

class TelaGeracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon"),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //cada elemento tem a extensão de 200x
          childAspectRatio: 3 / 2, //proporção de elementos na tela
          crossAxisSpacing: 20, //espaçamento de eixo
          mainAxisSpacing: 20, //espaçamento entre elementos
        ),
        children: generations.map((generation) {
          return GeraracaoItem(generation);
        }).toList(),
      ),
    );
  }
}
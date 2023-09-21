import '../models/generations.dart';
import '../telas/tela_geracao.dart';
import 'package:flutter/material.dart';

import '../utils/rotas.dart';

class GeraracaoItem extends StatelessWidget {
  final Generation generation;

  GeraracaoItem(this.generation);

//precisa disso sempre que chamar uma tela
  void selecionarPokemon(BuildContext context) {
    //push coloca pop tira
    Navigator.of(context).pushNamed(Rotas.POKEMONS, arguments: generation);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecionarPokemon(context),
      child: Container(
          padding: EdgeInsets.all(15),
          child: Text(generation.title),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.greenAccent,
          )),
    );
  }
}

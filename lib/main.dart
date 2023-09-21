import 'package:flutter/material.dart';
import 'package:pokemon_prova/telas/tela_geracao.dart';
import 'package:pokemon_prova/telas/tela_pokemons.dart';
import 'utils/rotas.dart';

void main() {
  runApp(AppCardapio());
}

class AppCardapio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Gerações de Pokemons",
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            textTheme: ThemeData.light().textTheme.copyWith(
                titleSmall:
                    const TextStyle(fontSize: 20, fontFamily: 'Schyler'))),
        //home: TelaCategorias(),
        routes: {
          Rotas.HOME: (context) => TelaGeracoes(),
          Rotas.POKEMONS: (context) => TelaPokemons(),
        });
  }
}

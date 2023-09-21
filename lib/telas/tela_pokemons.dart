import 'package:pokemon_prova/data/generations.dart';
import 'package:pokemon_prova/models/generations.dart';
import 'package:flutter/material.dart';

class TelaPokemons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final generation = ModalRoute.of(context)?.settings.arguments as Generation;
    return Scaffold(
        appBar: AppBar(
          title: Text("${generation.title}"),
        ),
        body: ListView.builder(
            itemCount: generation.pokemons.length,
            itemBuilder: (context, pagePosition) {
              return Column(
                children: <Widget>[
                  Image.asset(generation.pokemons[pagePosition]),
                  Text(generation.title,
                      style: TextStyle(color: Colors.deepPurple))
                ],
              );
            }));
  }
}

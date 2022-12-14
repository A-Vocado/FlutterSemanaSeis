import 'package:flutter/material.dart';
import 'package:listagem_de_usuarios/src/design_system/molecules/z_appbar.dart';
import 'package:listagem_de_usuarios/src/model/pokemon_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(titleText: pokemon.name!),
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Table(
              children: [
                TableRow(children: [
                  Image.network(pokemon.img!),
                ]),
                TableRow(children: [
                  Text(pokemon.height!),
                ]),
                TableRow(children: [
                  Text(pokemon.weight!),
                ]),
                const TableRow(children: [
                  Text('Não consegui terminar essa página a tempo'),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:listagem_de_usuarios/model/pokemon_model.dart';

abstract class InterfaceHomeRepository {
  Future<List<PokemonModel>> getPokemons();
}

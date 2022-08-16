import 'package:listagem_de_usuarios/src/interfaces/home_repo_interface.dart';
import 'package:listagem_de_usuarios/src/interfaces/http_client_interface.dart';
import 'package:listagem_de_usuarios/src/model/pokemon_model.dart';

class HomeRepository implements InterfaceHomeRepository {
  final InterfaceHttpClient client;
  HomeRepository(this.client);

  @override
  Future<List<PokemonModel>> getPokemons() async {
    final List<PokemonModel> pokemons = [];
    final response = await client.get();

    if (response != null) {
      for (var pokemon in response) {
        pokemons.add(PokemonModel.fromJson(pokemon));
      }
    }
    return pokemons;
  }
}

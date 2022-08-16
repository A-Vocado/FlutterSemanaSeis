import 'package:listagem_de_usuarios/model/pokemon_model.dart';
import 'package:mobx/mobx.dart';
part 'pokemon_api_store.g.dart';

class PokemonApiStore = _PokemonApiStoreBase with _$PokemonApiStore;

abstract class _PokemonApiStoreBase with Store {
  @observable
  PokemonModel? pokemonModel;

  @action
  fetchPokemonList() {}
}

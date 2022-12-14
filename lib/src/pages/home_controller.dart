import 'package:listagem_de_usuarios/src/interfaces/home_repo_interface.dart';
import 'package:listagem_de_usuarios/src/model/pokemon_model.dart';

class HomeController {
  final InterfaceHomeRepository repository;
  HomeController(this.repository);

  Future<List<PokemonModel>> getData() async => await repository.getPokemons();
}

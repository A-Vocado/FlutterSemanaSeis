import 'package:flutter/material.dart';
import 'package:listagem_de_usuarios/design_system/molecules/z_appbar.dart';
import 'package:listagem_de_usuarios/design_system/molecules/z_card.dart';
import 'package:listagem_de_usuarios/model/pokemon_model.dart';
import 'package:listagem_de_usuarios/pages/home_controller.dart';
import 'package:listagem_de_usuarios/repositories/home_repository.dart';
import 'package:listagem_de_usuarios/shared/http_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _homeController;

  @override
  void initState() {
    _homeController = HomeController(
      HomeRepository(
        HttpClient(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(
        titleText: 'Pokedex',
      ),
      body: Center(
        child: FutureBuilder<List<PokemonModel>>(
          future: _homeController.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ZCard(
                    name: snapshot.data![index].name!,
                    number: snapshot.data![index].num!,
                    icon: snapshot.data![index].img!,
                  );
                },
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

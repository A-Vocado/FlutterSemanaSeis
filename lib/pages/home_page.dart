import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: Center(
        child: FutureBuilder<List<PokemonModel>>(
          future: _homeController.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      if (index > 0) const Divider(thickness: 2),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(snapshot.data![index].name!),
                            Text(snapshot.data![index].num!),
                            // Text(snapshot.data![index].type!),
                          ],
                        ),
                      ),
                    ],
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

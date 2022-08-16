import 'package:flutter/material.dart';
import 'package:listagem_de_usuarios/design_system/atoms/text/z_text_h2.dart';

class ZAppBar extends PreferredSize {
  ZAppBar({Key? key, required this.titleText, this.actions})
      : super(key: key, preferredSize: const Size(500, 50), child: Container());

  final String titleText;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ZTextH2(text: titleText),
      actions: const [
        InkWell(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(MyIcons.catching_pokemon_outlined)),
        ),
      ],
      backgroundColor: Colors.red[800],
      elevation: 0,
    );
  }
}

class MyIcons {
  MyIcons._();

  static const IconData catching_pokemon_outlined =
      IconData(0xef36, fontFamily: 'MaterialIcons');
}

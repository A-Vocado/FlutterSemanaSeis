import 'package:flutter/material.dart';
import 'package:listagem_de_usuarios/design_system/atoms/text/z_text_16px.dart';
import 'package:listagem_de_usuarios/design_system/atoms/text/z_text_h1.dart';

import '../atoms/text/z_text_14px.dart';

class ZCard extends StatelessWidget {
  const ZCard({
    Key? key,
    required this.name,
    required this.number,
    required this.icon,
  }) : super(key: key);

  final String name;
  final String number;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 238, 236, 236),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ZText14(text: '#$number'),
                    ZTextH1(text: name),
                  ],
                ),
                Image.network(icon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

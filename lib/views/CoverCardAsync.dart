import 'package:flutter/material.dart';
import 'package:pokedex/models/Pokemon.dart';
import 'package:pokedex/views/CoverCard.dart';

class CoverCardAsync extends StatelessWidget {
  final Future<Map<String, dynamic>> info;
  final Pokemon pok;

  const CoverCardAsync(this.info, this.pok);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: info,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
            return temp(pok);
          case ConnectionState.done:
            pok.setInfo(snapshot.data);
            return CoverCard(pokemon: pok);
          default:
            return Container(
              height: 100,
              color: Colors.blue,
            );
        }
      },
    );
  }

  Widget temp(Pokemon pokemon) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 5,
        child: Container(
          height: 100,
          color: Colors.blue[700],
          child: ListTile(
            title: Text(pokemon.name),
            leading: Text('Cargando...'),
            trailing: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

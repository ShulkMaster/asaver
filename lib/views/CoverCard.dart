import 'package:flutter/material.dart';
import '../models/Pokemon.dart';

class CoverCard extends StatelessWidget {
  final Pokemon pokemon;

  const CoverCard({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 5,
        child: Container(
          height: 100,
          color: Colors.blue[700],
          child: ListTile(
            isThreeLine: true,
            title: Text(pokemon.name, style: TextStyle(color: Colors.white),),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Peso: ${pokemon.weight}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Altura ${pokemon.height}',
                   style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            leading: Text(pokemon.id.toString(), style: TextStyle(color: Colors.white),),
            trailing: Image(
              ///Escogi front default por que todos los pokemones tienen por lo menos una imagen
              ///y esa es la que siempre esta las demas como las de las hembras y shiny no simpre estasn
              ///disponibles
              image: NetworkImage(pokemon.sprites['front_default']),
            ),
          ),
        ),
      ),
    );
  }
}

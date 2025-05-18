import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/models/pokemon_card_data.dart';

//Esse deve ser um componente que vai ser usado para mostrar os cards de pokemons
class PokemonCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;    
  const PokemonCard({
        Key? key,
        required this.id,
        required this.name,
        required this.image,
    }) : super(key: key);    
    BoxDecoration getContainerDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[50],
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              //PokemonCardBackground(id: id),
              PokemonCardData(name: name, image: image),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training/section_24/constants/constants_pokedex.dart';
import 'package:flutter_training/section_24/constants/ui_helper.dart';
import 'package:flutter_training/section_24/model/pokemon_model.dart';

class PokeTypeName extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeTypeName({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(

            children: [
              Expanded(child: Text(pokemon.name ?? '' , style: Constants_Pokedex.getPokemonNameTextStyle())),
              Text('#${pokemon.num}' , style: Constants_Pokedex.getPokemonNameTextStyle(),),
            ],
          ),
          SizedBox(height: 0.02.sh),
          Chip(label: Text(pokemon.type?.join(' , ') ?? '', style: Constants_Pokedex.getTypeChipTextStyle(),))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training/section_24/constants/constants_pokedex.dart';
import 'package:flutter_training/section_24/constants/ui_helper.dart';
import 'package:flutter_training/section_24/model/pokemon_model.dart';
import 'package:flutter_training/section_24/pages/detail_page.dart';
import 'package:flutter_training/section_24/widgets/poke_image_and_ball.dart';

class PokelistItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokelistItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailPagePokemon(pokemon: pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder( borderRadius:  BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child:Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? 'N/A', style: Constants_Pokedex.getPokemonNameTextStyle(),),
              Chip(label: Text(pokemon.type![0], style: Constants_Pokedex.getTypeChipTextStyle(),)),
              Expanded(child: PokeImageAndBall(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:GenshinGuid/components/SubComponents/CharactersCard.dart';
import 'package:flutter/material.dart';
import '../utility/colorUtility.dart';

// imprort SubComponents

// Model
import '../model/CharactersModel.dart';

class CharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor('#353535'),
      ),
      child: GridView.builder(
        itemCount: CharactersList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height) *
              1.3,
        ),
        itemBuilder: (context, index) => CharactersCard(
          charactersModel: CharactersList[index],
        ),
      ),
    );
  }
}

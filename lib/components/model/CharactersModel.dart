import 'package:GenshinGuid/components/utility/colorUtility.dart';
import 'package:flutter/material.dart';

class CharactersModel {
  static int AllCharactersCount = 35;

  int id = 5;
  String Name = "Amber";
  String ElementType = "Pyro";
  String descriptoion = "";
  int NoOfStars = 4;

  String weaponType = "";

  List<String> Talents_names = [
    "Talent Sharpshooter",
    "Baron Bunny",
    "Fiery Rain"
  ];
  List<String> Ascension_Passive_names = [
    "Every Arrow Finds Its Target",
    "Precise Shot",
    "Gliding Champion"
  ];

  AssetImage Thumb = new AssetImage("");
  IconData starsIcon = Icons.star;

  // ui
  List<Color> CardCharactersColor = [];
  List<Color> MainCharactersColor = [];
  // TODO: try to cal the CardCharactersColor from the type of the Element
  // TODO: try to do the same for all the colors need for that Character

  CharactersModel({
    required this.id,
    required this.Name,
    required this.ElementType,
    required this.descriptoion,
    required this.NoOfStars,
    required this.weaponType,
    required this.Thumb,
    required this.CardCharactersColor,
    //required this.MainCharactersColor,
  });

  List<Color> GetmainColoerTheme() {
    switch (this.ElementType) {
      case 'Pyro':
        return [
          HexColor("#403234"),
          HexColor("#554244"),
          HexColor("#DE905F"),
          HexColor("#533538"),
          HexColor("#FE6B58"),
          HexColor("#FE6B58")
        ];
        break;
      default:
        return [
          HexColor("#403234"),
          HexColor("#554244"),
          HexColor("#DE905F"),
          HexColor("#533538"),
          HexColor("#FE6B58"),
          HexColor("#FE6B58")
        ];
    }
  }

  AssetImage GetElementTypeImage() {
    return new AssetImage("./images/Elements/Element_${this.ElementType}.png");
  }

  AssetImage GetNamecardBackgroundImage() {
    return new AssetImage(
        "./images/Characters/Namecard_Background_${this.Name.replaceAll(" ", "_")}.png");
  }

  AssetImage GetTalentImage({int TalentIndex = 0}) {
    return new AssetImage(
        "./images/Talents/${this.Talents_names[TalentIndex].replaceAll(" ", "_")}.png");
  }

  AssetImage GetweaponTypeImage() {
    return GetTalentImage(TalentIndex: 0);
  }

  Widget GetStarsIcon({int noOfStars = -1, double sizee = 19}) {
    List temp = List.generate(this.NoOfStars, (index) => null);
    return Container(
      alignment: Alignment.center,
      //constraints: BoxConstraints,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: temp
              .map((e) => Container(
                    child: Icon(
                      starsIcon,
                      color: HexColor("#FFCC33"),
                      size: sizee,
                    ),
                  ))
              .toList()),
    );
  }
}

final CharactersList = [
  CharactersModel(
    id: 0,
    Name: "Amber",
    ElementType: "Pyro",
    descriptoion:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata",
    NoOfStars: 4,
    weaponType: "bow",
    Thumb: AssetImage("./images/Characters/Character_Amber_Thumb.png"),
    CardCharactersColor: [HexColor("#A61420"), HexColor("#593F42")],
  ),
  CharactersModel(
    id: 1,
    Name: "Diluc",
    ElementType: "Pyro",
    descriptoion:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata",
    NoOfStars: 5,
    weaponType: "Claymore",
    Thumb: AssetImage("./images/Characters/Character_Diluc_Thumb.png"),
    CardCharactersColor: [HexColor("#A61420"), HexColor("#593F42")],
  ),
  CharactersModel(
    id: 2,
    Name: "Fischl",
    ElementType: "Electro",
    NoOfStars: 4,
    weaponType: "bow",
    descriptoion:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata",
    Thumb: AssetImage("./images/Characters/Character_Fischl_Thumb.png"),
    CardCharactersColor: [HexColor("#815DA6"), HexColor("#594255")],
  ),
  CharactersModel(
    id: 3,
    Name: "Kamisato Ayaka",
    ElementType: "Cryo",
    NoOfStars: 5,
    weaponType: "Sword",
    descriptoion:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata",
    Thumb: AssetImage("./images/Characters/Character_Kamisato_Ayaka_Thumb.png"),
    CardCharactersColor: [HexColor("#79B4D9"), HexColor("#494D60")],
  ),
  CharactersModel(
    id: 4,
    Name: "Beidou",
    ElementType: "Electro",
    NoOfStars: 4,
    weaponType: "Claymore",
    descriptoion:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata",
    Thumb: AssetImage("./images/Characters/Character_Beidou_Thumb.png"),
    CardCharactersColor: [HexColor("#815DA6"), HexColor("#594255")],
  ),
];

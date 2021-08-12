import 'package:GenshinGuid/components/SubComponents/AppBar.dart';
import 'package:GenshinGuid/components/SubComponents/CharactersCard.dart';
import 'package:GenshinGuid/components/utility/colorUtility.dart';
import 'package:flutter/material.dart';

import 'package:GenshinGuid/components/model/CharactersModel.dart';

class CharactersDetiles extends StatelessWidget {
  int CharactersId = 0;
  CharactersDetiles(this.CharactersId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CharacterDetileAppBar(CharactersId),
      body: mainContent(CharactersId),
    );
  }
}

class mainContent extends StatelessWidget {
  int CharactersId = 0;
  mainContent(this.CharactersId);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          color: CharactersList[CharactersId].GetmainColoerTheme()[0],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DescriptionCard(CharactersId),
            DescriptionCard(CharactersId),
          ],
        ),
      ),
    );
  }
}

class DescriptionCard extends StatelessWidget {
  int CharactersId = 0;
  DescriptionCard(this.CharactersId);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: CharactersList[CharactersId].GetmainColoerTheme()[1],
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // title
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "DESCRIPTOION",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // descriptoion
          Container(
            margin: EdgeInsets.only(top: 20),
            child: FractionallySizedBox(
              widthFactor: 0.9,
              //heightFactor: 0.7,
              child: Text(
                CharactersList[CharactersId].descriptoion,
                style: TextStyle(
                  color: HexColor("#C9C9C9"),
                  fontSize: 20,
                ),
                overflow: TextOverflow.fade,
                //textAlign: TextAlign.center,
              ),
            ),
          ),
          // more Button
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {}
                  return Colors.white.withOpacity(0);
                }),
              ),
              child: Text(
                'More',
                style: TextStyle(
                  color: CharactersList[CharactersId].GetmainColoerTheme()[2],
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // Stars
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Align(
                alignment: Alignment.center,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color:
                          CharactersList[CharactersId].GetmainColoerTheme()[3],
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: CharactersList[CharactersId].GetStarsIcon(sizee: 25),
                  ),
                )),
          ),
          // controll Button
          Container(
            //color: Colors.white,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ElementType
                Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: CharactersList[CharactersId].GetmainColoerTheme()[3],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Image(
                    image: CharactersList[CharactersId].GetElementTypeImage(),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                // wepon type
                Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: CharactersList[CharactersId].GetmainColoerTheme()[3],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Image(
                    image: CharactersList[CharactersId].GetweaponTypeImage(),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                //
                InkWell(
                  onTap: () => {
                    //TODO: show Characte birthhDay some how
                  },
                  child: Container(
                      height: 60,
                      width: 60,
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: CharactersList[CharactersId]
                            .GetmainColoerTheme()[3],
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.cake,
                        color: CharactersList[CharactersId]
                            .GetmainColoerTheme()[2],
                        size: 30,
                      )),
                ),
                // dropDowm Button
                InkWell(
                  onTap: () => {},
                  child: Container(
                      height: 60,
                      width: 60,
                      //padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: CharactersList[CharactersId]
                            .GetmainColoerTheme()[3],
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: CharactersList[CharactersId]
                            .GetmainColoerTheme()[2],
                        size: 60,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CharacterDetileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  //TODO: do the Sliver
  int CharactersId = 0;
  late final double height = 200;

  CharacterDetileAppBar(this.CharactersId);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      // width: double.infinity,
      padding: EdgeInsets.only(top: 35),
      color: CharactersList[CharactersId].GetmainColoerTheme()[0],
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // nameCard
          Stack(
            overflow: Overflow.visible,
            children: [
              Image(
                image:
                    CharactersList[CharactersId].GetNamecardBackgroundImage(),
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 20,
                left: 10,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              Positioned(
                top: 145,
                left: 0,
                child: CharacterPicName(CharactersId),
              ),
              // main
              // Positioned(
              //   top: 120,
              //   child: mainContent(CharactersId),
              // ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class CharacterPicName extends StatelessWidget {
  int CharactersId = 0;
  CharacterPicName(this.CharactersId);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        color: CharactersList[CharactersId].GetmainColoerTheme()[0],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        // border: Border.all(
        //   color: Colors.white,
        //   width: 1,
        //   style: BorderStyle.solid,
        // ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            top: -40,
            left: MediaQuery.of(context).size.width / 2 - 55,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: CharactersList[CharactersId].CardCharactersColor,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(80)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 3,
                    //offset: Offset(-3, -3),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Image(
                image: CharactersList[CharactersId].Thumb,
                height: 65,
                width: 65,
              ),
            ),
          ),
          Positioned(
            top: 70,
            //left: MediaQuery.of(context).size.width / 2 - 30,
            //character name
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    CharactersList[CharactersId].Name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

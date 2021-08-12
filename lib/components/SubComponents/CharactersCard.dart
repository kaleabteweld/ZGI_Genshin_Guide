import 'package:flutter/material.dart';
import '../utility/colorUtility.dart';

// Model
import '../model/CharactersModel.dart';

class CharactersCard extends StatelessWidget {
  List<Color> gradientColors = [];
  CharactersModel? charactersModel = null;

  CharactersCard({required this.charactersModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(charactersModel!.Name);
        print(charactersModel!.id);
        Navigator.of(context).pushNamed(
          '/CharactersDetile',
          arguments: {'id': charactersModel!.id},
        );
      },
      // card
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 2,
                offset: Offset(3, 3)),
          ],
          gradient: LinearGradient(
              colors: charactersModel!.CardCharactersColor,
              begin: Alignment.topCenter,
              end: Alignment(0, 0.4)),
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        child: Stack(
          overflow: Overflow.visible,
          fit: StackFit.expand,
          children: [
            // element type
            Positioned(
              top: -17,
              right: -17,
              child: Container(
                // height: 30,
                // width: 30,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  //color: charactersModel!.CardCharactersColor[1],
                  color: HexColor('#353535'),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(4, 3)),
                  ],

                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  // border:
                  //     Border.all(style: BorderStyle.solid, color: Colors.white),
                ),
                child: Image(
                  image: charactersModel!.GetElementTypeImage(),
                  height: 25,
                  width: 25,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // img
                Flexible(
                  flex: 2,
                  child: Image(
                    image: charactersModel!.Thumb,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(top: 30),
                          child: charactersModel!.GetStarsIcon(),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            charactersModel!.Name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget tempV1() {
    return InkWell(
      onTap: () {
        print(charactersModel!.Name);
      },
      child: Container(
        height: 200,
        width: 50,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: charactersModel!.CardCharactersColor,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        // TODO: use Flexible
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // height: 30,
                  // width: 30,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(0, 1, 1, 1),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white),
                  ),
                  child: Image(
                    image: charactersModel!.GetElementTypeImage(),
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
            Image(
              image: charactersModel!.Thumb,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: charactersModel!.GetStarsIcon(),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                charactersModel!.Name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

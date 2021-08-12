import 'package:GenshinGuid/components/model/CharactersModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:GenshinGuid/components/controller/CBottomAppBar.dart';

//icons
import '../icons/my_flutter_app_icons.dart';

//Utility
import '../utility/colorUtility.dart';

class Menu {
  String title = 'My Custom AppBar';
  IconData icon = Icons.ac_unit;
  int index = 0;
  Menu({required this.title, required this.icon, required this.index});
}

final menus = <Menu>[
  Menu(
    title: "Characters",
    icon: Icons.people_alt,
    index: 0,
  ),
  Menu(
    title: "Wepons",
    icon: MyFlutterApp.crossed_swords,
    index: 1,
  ),
];

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title = 'My Custom AppBar';
  Widget icon = Icon(
    Icons.people_alt_outlined,
    color: HexColor('#D9D9D9'),
  );

  CoBottomAppBar BottomAppBarController = Get.put(CoBottomAppBar());

  late final double height = 100;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: EdgeInsets.only(top: 30),
        height: height,
        decoration: BoxDecoration(
          // color: HexColor('#474747'),
          color: HexColor('#353535'),
          //borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // tab
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    // padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(right: 10),
                    child: Icon(
                      menus[BottomAppBarController.page.toInt()].icon,
                      color: HexColor('#D9D9D9'),
                    ),
                  ),
                  Container(
                    // padding: const EdgeInsets.all(5),
                    // margin: const EdgeInsets.all(5),
                    child: Text(
                      menus[BottomAppBarController.page.toInt()].title,
                      style: TextStyle(
                        color: HexColor('#D9D9D9'),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // accout
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: HexColor('#D9D9D9'),
                  child: Icon(
                    Icons.account_circle,
                    color: HexColor('#353535'),
                  ),
                ),
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            //   padding: const EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(50)),
            //     border: Border.all(
            //         color: HexColor('#D9D9D9'),
            //         style: BorderStyle.solid,
            //         width: 3),
            //   ),
            //   child: Icon(
            //     Icons.people_alt_outlined,
            //     color: HexColor('#D9D9D9'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class CBottomAppBar extends StatelessWidget {
  int index = 0;

  final BottomAppBarController = Get.put(CoBottomAppBar());

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: HexColor("#D9D9D9"),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: menus
              .map((m) => Expanded(
                    flex: 1,
                    child: BAButt(
                      icon: m.icon,
                      now: BottomAppBarController.page.toInt(),
                      index: m.index,
                    ),
                  ))
              .toList(),

          // Expanded(
          //   flex: 1,
          //   child: BAButt(
          //     icon: Icons.people_alt,
          //     now: BottomAppBarController.page.toInt(),
          //     index: 1,
          //   ),
          // ),
          // Expanded(
          //   flex: 1,
          //   child: BAButt(
          //     icon: Icons.people_alt,
          //     now: BottomAppBarController.page.toInt(),
          //     index: 2,
          //   ),
          // )
        ));

    // return Row(
    //   //color: HexColor('#353535'),
    //   children: [
    //     Expanded(
    //       flex: 0,
    //       )
    //   ],
    // );
  }
}

class BAButt extends StatelessWidget {
  bool Active = true;
  IconData icon = Icons.people_alt;
  int index = 0;
  int now = 0;

  final BottomAppBarController = Get.put(CoBottomAppBar());

  BAButt({required this.icon, required this.now, required this.index});

  @override
  Widget build(BuildContext context) {
    //print("BAButt");
    return InkWell(
        onTap: () {
          BottomAppBarController.ChPage(index);
        },
        child: Obx(
          () => Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: BottomAppBarController.page.toInt() == index
                    ? HexColor('#353535')
                    : HexColor('#D9D9D9'),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Icon(
                icon,
                color: BottomAppBarController.page.toInt() == index
                    ? HexColor('#D9D9D9')
                    : HexColor('#353535'),
                size: 20,
              )),
        ));
  }
}

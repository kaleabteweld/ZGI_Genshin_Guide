import 'package:GenshinGuid/components/SubComponents/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// components import
import './components/screens/Characters.dart';
import './components/screens/wepons.dart';

import './components/controller/CBottomAppBar.dart';
import 'components/utility/colorUtility.dart';

import 'package:GenshinGuid/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Widget> routes = [CharactersPage(), WeponsPage()];

  final BottomAppBarController = Get.put(CoBottomAppBar());

  String title = "Characters";
  Widget icon = Icon(
    Icons.people_alt_outlined,
    color: HexColor('#D9D9D9'),
  );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: Scaffold(
        appBar: CAppBar(),
        body: Obx(() => routes[BottomAppBarController.page.toInt()]),
        bottomNavigationBar: CBottomAppBar(),
      ),
    );
  }
}

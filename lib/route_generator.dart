import 'package:flutter/material.dart';

import 'package:GenshinGuid/components/screens/screensDetile/CharactersDetile.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final Object? args = settings.arguments;

    switch (settings.name) {
      case '/CharactersDetile':
        if (args is Map<String, dynamic>) {
          return MaterialPageRoute(
              builder: (_) => CharactersDetiles(args['id']));
        }
        return MaterialPageRoute(builder: (_) => CharactersDetiles(0));

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

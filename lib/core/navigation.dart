import 'package:flutter/material.dart';
import 'package:musix/data/models/musix_entity/musix_entity.dart';

import '../presentation/screens/screens.dart';

class MusixNavigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    Widget child = Scaffold(
      body: Center(child: Text('404')),
    );

    switch (settings.name) {
      case NavigationScreen.route:
        child = NavigationScreen();
        break;
      case HomeScreen.route:
        child = HomeScreen();
        break;
      case SongCollectionScreen.route:
        child = SongCollectionScreen(
          entity: settings.arguments as MusixEntity,
        );
        break;
    }

    return MaterialPageRoute(builder: (context) => child);
  }
}

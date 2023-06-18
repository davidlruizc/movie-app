import 'package:flutter/material.dart';

import '../presentation/movies/movies_screen.dart';

class MoviesNavigator extends StatelessWidget {
  const MoviesNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                default:
                  return const MoviesScreen();
              }
            });
      },
    );
  }
}

import 'package:flutter/cupertino.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: const [Text("Movies screen")],
    ));
  }
}

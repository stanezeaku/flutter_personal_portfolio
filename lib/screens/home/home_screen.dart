import 'package:flutter/material.dart';
import 'package:ifeetech/screens/UI/home_page.dart';
import 'package:ifeetech/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomePage(),
      ],
    );
  }
}

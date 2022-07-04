import 'package:flutter/material.dart';
import 'package:ifeetech/constants.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.open_in_new,
            ),
          ),
        ),
      ),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...children,
            // our footer
          ],
        ),
      ),
    );
  }
}

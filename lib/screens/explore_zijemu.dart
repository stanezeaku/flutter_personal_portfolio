import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ExploreZijemu extends StatefulWidget {
  const ExploreZijemu({Key? key}) : super(key: key);

  @override
  State<ExploreZijemu> createState() => _ExploreZijemuState();
}

class _ExploreZijemuState extends State<ExploreZijemu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Content not ready!  Development in Progress!",
                style: Theme.of(context).textTheme.subtitle1!,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: size.height * 0.7,
              child: const RiveAnimation.asset(
                'assets/explore.riv',
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

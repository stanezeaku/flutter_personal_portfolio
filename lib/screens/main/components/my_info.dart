import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),

            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 6),
                image: const DecorationImage(
                  image: AssetImage('assets/images/IMG_7344.jpeg'),
                ),
              ),
            ),

            // const CircleAvatar(
            //   radius: 50,
            //   backgroundImage: AssetImage("assets/images/IMG_7344.jpeg"),
            // ),
            const Spacer(),
            FittedBox(
              child: Text(
                "Stanley Ezeaku",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            const FittedBox(
              child: Text(
                "Senior Software Engineer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    height: 1.5,
                    color: Colors.white70),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

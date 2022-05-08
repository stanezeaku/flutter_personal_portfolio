import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifeetech/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isDesktop(context) ? 380 : 280,
      width: double.infinity,
      // aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: AutoSizeText(
                    "Discover my Amazing \nInnovative Startup!",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      context.goNamed('zijemu');
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: DefaultTextStyle(
          // it applies same style to all the widgets under it
          style: Theme.of(context).textTheme.subtitle1!,
          maxLines: 3,
          child: Responsive.isDesktop(context)
              ? const FlutterCodedText()
              : const AnimatedTextMobile(),
        ));
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          "the African Innovative tech start up",
          speed: const Duration(milliseconds: 120),
        ),
        TyperAnimatedText(
          "a redefine online marketplace for African-made Products",
          speed: const Duration(milliseconds: 120),
        ),
        TyperAnimatedText(
          "a free online tech platform for education and open sourcing",
          speed: const Duration(milliseconds: 120),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const zijume = Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "Zijemu",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
    return Row(
      children: const [
        zijume,
        SizedBox(width: defaultPadding / 2),
        Text("I am building "),
        AnimatedText(),
        SizedBox(width: defaultPadding / 2),
        zijume
      ],
    );
  }
}

class AnimatedTextMobile extends StatelessWidget {
  const AnimatedTextMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          "I am building the African Innovative tech start up",
          speed: const Duration(milliseconds: 120),
        ),
        TyperAnimatedText(
          "I am building a redefine online marketplace for African-made Products",
          speed: const Duration(milliseconds: 120),
        ),
        TyperAnimatedText(
          "I am building a free online tech platform for education and open sourcing",
          speed: const Duration(milliseconds: 120),
        ),
      ],
    );
  }
}

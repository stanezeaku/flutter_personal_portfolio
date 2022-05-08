import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ifeetech/screens/Widget/custom_text.dart';
import 'package:rive/rive.dart';

import '../../constants.dart';
import '../../responsive.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
              text: "About",
              textsize: 26.0,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              width: 12.0,
            ),
            const CustomText(
              text: "Stanley",
              textsize: 26.0,
              color: primaryColor,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            Container(
              width: size.width / 4,
              height: 1.10,
              color: const Color(0xff303C55),
            ),
          ],
        ),
        // SizedBox(
        //   height: size.height * 0.7,

        // ),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                    child: const RiveAnimation.asset(
                      'assets/community.riv',
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                  Wrap(
                    children: const [
                      AutoSizeText(
                        "Hey! I'm Stanley Ezeaku, a Software Developer based in Dubai, UAE.\n\nI love building software applications that are innovative to human improvement and advancement\n\n",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      AutoSizeText(
                        "As a self-thought software developer my principle of suceess are clear thought and revolve around my shared roapmap. I am a lover of open source and my ambition is to build and proudly own a multinational tech company which main goal is to solve African needs, provide innovative tech solutions and empowerment.\n\n",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // height: size.height * 1.2,
                child: Responsive.isDesktop(context)
                    ? Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            child: Card(
                              color: const Color(0xff61F9D5),
                              child: Container(
                                child: const RiveAnimation.asset(
                                  'assets/digibot2.riv',
                                  fit: BoxFit.cover,
                                ),
                                margin: const EdgeInsets.all(2.75),
                                height: size.height / 2,
                                width: size.width / 5,
                                color: const Color(0xff0A192F),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        child: const RiveAnimation.asset(
                          'assets/digibot2.riv',
                          fit: BoxFit.fill,
                        ),
                        margin: const EdgeInsets.all(2.75),
                        height: size.height / 4,
                        width: size.width / 4,
                        // color: const Color(0xff0A192F),
                      ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
      ],
    );
  }
}

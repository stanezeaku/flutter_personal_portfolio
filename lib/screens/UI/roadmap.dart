import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ifeetech/screens/Widget/custom_text.dart';
import 'package:ifeetech/screens/Widget/roadmap_box.dart';

import '../../constants.dart';

class Roadmap extends StatelessWidget {
  const Roadmap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
              text: "My",
              textsize: 26.0,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              width: 12.0,
            ),
            const CustomText(
              text: "Roadmap",
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
        //   height: 8,
        // ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                  height: 980,
                  //color: Colors.indigo,
                  child: Stack(
                    children: [
                      const Center(
                        child: VerticalDivider(
                          color: Color(0xff64FFDA),
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.pink,
                            child: FaIcon(FontAwesomeIcons.trowelBricks,
                                color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            child: FaIcon(FontAwesomeIcons.searchengin,
                                color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.brown,
                            child: FaIcon(FontAwesomeIcons.networkWired,
                                color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            child: FaIcon(FontAwesomeIcons.laptopCode,
                                color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                            child: FaIcon(FontAwesomeIcons.dev,
                                color: Colors.white),
                          ),
                        ],
                      ))
                    ],
                  )),
            ),
            const Flexible(
                flex: 4,
                child: SizedBox(
                  height: 980,
                  child: RoadmapBox(),
                ))
          ],
        )
      ],
    );
  }
}

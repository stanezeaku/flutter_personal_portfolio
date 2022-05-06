import 'package:flutter/material.dart';
import 'package:ifeetech/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifeetech/screens/method.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);

  final ScrollController _controller = ScrollController();
  final Method method = Method();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: Scrollbar(
                showTrackOnHover: true,
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  controller: _controller,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      const AreaInfoText(
                        title: "Residence",
                        text: "United Arab Emirates",
                      ),
                      const AreaInfoText(
                        title: "City",
                        text: "Dubai",
                      ),
                      const Skills(),
                      const SizedBox(height: defaultPadding),
                      const Coding(),
                      const Knowledges(),
                      const Divider(),
                      const SizedBox(height: defaultPadding / 2),
                      TextButton(
                        onPressed: () {
                          method.launchURL(
                              "https://drive.google.com/file/d/1Tqsf5j0KDcoYJeo47KR07NoFVFiXPjVZ/view?usp=sharing");
                        },
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                ),
                              ),
                              const SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset("assets/icons/download.svg")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: defaultPadding),
                        color: const Color(0xFF24242E),
                        child: Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                method.launchURL(
                                    "https://www.linkedin.com/in/stanezeaku/");
                              },
                              icon:
                                  SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                method.launchURL(
                                    "https://github.com/Stanley-Ezeaku");
                              },
                              icon: SvgPicture.asset("assets/icons/github.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                method.launchURL(
                                    "https://twitter.com/stan_ezeaku");
                              },
                              icon:
                                  SvgPicture.asset("assets/icons/twitter.svg"),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

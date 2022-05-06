import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ifeetech/constants.dart';
import 'package:ifeetech/responsive.dart';
import 'package:ifeetech/screens/method.dart';
import 'package:ifeetech/screens/UI/about.dart';
import 'package:ifeetech/screens/UI/feature_project.dart';
import 'package:ifeetech/screens/UI/contact.dart';

import 'package:ifeetech/screens/UI/roadmap.dart';
import 'package:ifeetech/screens/Widget/home_quote.dart';
import 'package:ifeetech/screens/Widget/app_bar_title.dart';

import 'package:ifeetech/screens/home/components/home_banner.dart';
import 'package:ifeetech/screens/home/home_screen.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();
  AutoScrollController? _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController!.hasClients &&
        _autoScrollController!.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('setState is called');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController!
        .scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
    _autoScrollController!.highlight(index);
  }

  Widget _wrapScrollTag({int? index, Widget? child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController!,
      index: index!,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      primary: true,
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //Navigation Bar
          SizedBox(
            height: size.height * 0.14,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  IconButton(
                      icon: SvgPicture.asset("assets/icons/logo.svg"),
                      onPressed: () {
                        // context.go('home');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      }),
                  if (!Responsive.isMobile(context)) const Spacer(),
                  Expanded(
                    flex: Responsive.isDesktop(context) ? 4 : 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DefaultTabController(
                        length: 4,
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white,
                          // automaticIndicatorColorAdjustment: false,
                          // labelStyle: Theme.of(context).textTheme.subtitle2,
                          indicatorColor: Colors.transparent,
                          onTap: (index) async {
                            _scrollToIndex(index);
                          },
                          tabs: const [
                            Tab(
                              child: AppBarTitle(
                                text: 'About',
                              ),
                            ),
                            Tab(
                              child: AppBarTitle(
                                text: 'Roadmap',
                              ),
                            ),
                            Tab(
                              child: AppBarTitle(
                                text: 'Projects',
                              ),
                            ),
                            Tab(
                              child: AppBarTitle(
                                text: 'Contact',
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
          ),

          Row(
            children: [
              //Social Icon
              SizedBox(
                width: size.width * 0.09,
                height: size.height - 82,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        icon: const FaIcon(FontAwesomeIcons.github),
                        color: const Color(0xffA8B2D1),
                        iconSize: 16.0,
                        onPressed: () {
                          method.launchURL("https://github.com/Stanley-Ezeaku");
                        }),
                    IconButton(
                        icon: const FaIcon(FontAwesomeIcons.twitter),
                        color: const Color(0xffA8B2D1),
                        iconSize: 16.0,
                        onPressed: () {
                          method.launchURL("https://twitter.com/stan_ezeaku");
                        }),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      color: const Color(0xffA8B2D1),
                      onPressed: () {
                        method.launchURL(
                            "https://www.linkedin.com/in/stanezeaku/");
                      },
                      iconSize: 16.0,
                    ),
                    IconButton(
                        icon: const Icon(Icons.call),
                        color: const Color(0xffA8B2D1),
                        iconSize: 16.0,
                        onPressed: () {
                          method.launchCaller();
                        }),
                    IconButton(
                        icon: const Icon(Icons.mail),
                        color: const Color(0xffA8B2D1),
                        iconSize: 16.0,
                        onPressed: () {
                          method.launchEmail();
                        }),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: size.height * 0.20,
                          width: 2,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: size.height - 82,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomScrollView(
                      controller: _autoScrollController,
                      slivers: <Widget>[
                        SliverList(
                            delegate: SliverChildListDelegate([
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // HomeBanner with Explore Now Button
                              const HomeBanner(),

                              SizedBox(
                                height: size.height * .03,
                              ),

                              const Center(
                                child: SizedBox(
                                  height: 280,
                                  child: HomeQuote(),
                                ),
                              ),

                              SizedBox(
                                height: size.height * 0.20,
                              ),
                            ],
                          ),

                          //About Me
                          _wrapScrollTag(
                            index: 0,
                            child: const About(),
                          ),
                          SizedBox(
                            height: size.height * 0.10,
                          ),

                          //my developer Roadmap
                          _wrapScrollTag(index: 1, child: const Roadmap()),
                          SizedBox(
                            height: size.height * 0.10,
                          ),

                          //Some Things I've Built Main Project
                          _wrapScrollTag(
                              index: 2, child: const FeatureProject()),

                          const SizedBox(
                            height: 12.0,
                          ),

                          //Get In Touch
                          _wrapScrollTag(
                            index: 3,
                            child: Column(
                              children: [
                                const Contact(),

                                const SizedBox(
                                  height: 12.0,
                                ),

                                Divider(
                                  thickness: 2,
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                                //Footer
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  //color: Colors.white,
                                  child: const Text(
                                    " Built with Flutter 💙 \n\n © 2022 Stanley Ezeaku. All rights reserved.",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
                height: MediaQuery.of(context).size.height - 82,
                //color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: RotatedBox(
                        quarterTurns: 45,
                        child: FittedBox(
                          child: Text(
                            "ezeakuifechukwustanley@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: 100,
                          width: 2,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

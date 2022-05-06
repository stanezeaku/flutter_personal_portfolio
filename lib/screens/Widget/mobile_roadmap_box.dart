import 'package:flutter/material.dart';
import 'package:ifeetech/screens/Widget/roadmap_custom_data.dart';

class MobileRoadmap extends StatelessWidget {
  const MobileRoadmap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        RoadmapCustomData(
          title: "Fondations",
          subTitle:
              "I invest quality time, and concentration, engaging myself to fundamental knowledge and skills needed to build a strong foudation understanding \nin any area of technology i am working on",
        ),
        RoadmapCustomData(
          title: "Experimentation and Specialization",
          subTitle:
              "I carry out a Research Based experimentation on what works better if not the best. \nI specalizes my solution on what works the best in solving my problems.",
        ),
        RoadmapCustomData(
          title: "Networking and Freelancing",
          subTitle:
              "I get myself involved in different developer communities, tech talks, hackatons, meetup and startup events. These helps me involve myself in exchanging ideas and information with peers \nI take up freelance projects to gain more work experience and money of course.",
        ),
        RoadmapCustomData(
          title: "Application",
          subTitle:
              "Take a full time role or take up a personal project with the intention of turning it to a business \n In doing these i will be able to apply my knowledge and skills in a greater extend of problem solving.",
        ),
        RoadmapCustomData(
          title: "Repetition",
          subTitle:
              "I repeat the circle of my Roadmap, enaging in continuous learning and keep up with the latest and trending technology",
        ),
      ],
    );
  }
}

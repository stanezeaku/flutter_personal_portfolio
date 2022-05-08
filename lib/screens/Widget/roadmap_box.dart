import 'package:flutter/material.dart';
import 'package:ifeetech/screens/Widget/roadmap_custom_data.dart';

class RoadmapBox extends StatelessWidget {
  const RoadmapBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        RoadmapCustomData(
          title: "Foundations",
          subTitle:
              "I invest quality time engaging myself to fundamental knowledge and skills needed to build a strong foundation understanding, in any area of technology i am working on",
        ),
        RoadmapCustomData(
          title: "Experimentation and Specialization",
          subTitle:
              "In this phase, I carry out a Research Based experimentation on what works better if not the best. I specalizes my solution on what works the best in solving forseen problems.",
        ),
        RoadmapCustomData(
          title: "Networking and Freelancing",
          subTitle:
              "I get myself involved in different developer communities, tech talks, hackatons, meetup and startup events. These help me involve myself in exchanging ideas and information with peers. I take up freelance projects to gain more work experience and money of course.",
        ),
        RoadmapCustomData(
          title: "Application",
          subTitle:
              "I take a full time role or take up a personal project with the intention of turning it to a business. In doing these, i will be able to apply my knowledge and skills in the long run and gain effective problem solving skills.",
        ),
        RoadmapCustomData(
          title: "Repetition",
          subTitle:
              "I repeat the circle of my Roadmap, enaging in continuous learning and keeping up with the latest and trending technology",
        ),
      ],
    );
  }
}

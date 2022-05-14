import 'package:flutter/material.dart';
import 'package:ifeetech/models/project.dart';
import 'package:ifeetech/screens/Widget/project_item.dart';

import '../../constants.dart';
import '../Widget/custom_text.dart';

class FeatureProject extends StatelessWidget {
  const FeatureProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              text: "Projects",
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
        const SizedBox(
          height: 24,
        ),
        ...demoProjects
            .map((value) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ProjectItem(
                    title: value.title,
                    description: value.description,
                    videoId: value.videoID,
                    githubUrl: value.githubUrl,
                    youtubeUrl: value.youtubeUrl,
                  ),
                ))
            .toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../method.dart';

///
class ProjectItem extends StatefulWidget {
  final String title, description, videoId, githubUrl, youtubeUrl;

  const ProjectItem({
    Key? key,
    required this.title,
    required this.description,
    required this.videoId,
    required this.githubUrl,
    required this.youtubeUrl,
  }) : super(key: key);

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                backgroundColor: bgColor,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          widget.description,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Image.asset(widget.videoId),
        const SizedBox(
          height: 16,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: const FaIcon(FontAwesomeIcons.youtube),
                color: const Color(0xffA8B2D1),
                iconSize: 16.0,
                onPressed: () {
                  method.launchURL(widget.youtubeUrl);
                }),
            IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                color: const Color(0xffA8B2D1),
                iconSize: 16.0,
                onPressed: () {
                  method.launchURL(widget.githubUrl);
                }),
          ],
        ),

        const SizedBox(
          height: 16,
        ),
        // const PlayPauseButtonBar(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

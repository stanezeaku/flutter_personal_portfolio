import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ifeetech/responsive.dart';

class RoadmapCustomData extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const RoadmapCustomData({
    Key? key,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(top: 42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FittedBox(
              child: Text(
                title!,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Responsive.isMobile(context)
                ? AutoSizeText(
                    subTitle!,
                    style: const TextStyle(color: Colors.white, fontSize: 2),
                    maxLines: 12,
                  )
                : AutoSizeText(
                    subTitle!,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    maxLines: 12,
                  ),
            const SizedBox(
              height: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}

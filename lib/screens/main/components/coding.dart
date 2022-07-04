import 'package:flutter/material.dart';
import 'package:ifeetech/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.95,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "JavaScript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "M Code",
        ),
      ],
    );
  }
}

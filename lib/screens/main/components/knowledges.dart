import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(text: "Flutter, Django"),
        const KnowledgeText(text: "SQL, PostgreSQL"),
        const KnowledgeText(text: "AWS, Scikit-Learn"),
        const KnowledgeText(text: "Adobe XD, Next.JS"),
        const KnowledgeText(text: "Power BI, Postman"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/check.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(text),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../responsive.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? textsize;
  final Color color;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  const CustomText(
      {Key? key,
      @required this.text,
      @required this.textsize,
      this.color = Colors.white,
      this.letterSpacing,
      this.fontWeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      // textAlign: TextAlign.center,
      style: Responsive.isDesktop(context)
          ? Theme.of(context).textTheme.headline3!.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              )
          : Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
    );
  }
}

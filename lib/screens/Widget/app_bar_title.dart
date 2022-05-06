import 'package:flutter/material.dart';
import 'package:ifeetech/responsive.dart';

class AppBarTitle extends StatelessWidget {
  final String? text;
  //final Function ontab;

  const AppBarTitle({
    Key? key,
    @required this.text,
    /*@required this.ontab*/
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14.0,
        ),
        child: Responsive.isDesktop(context)
            ? Text(
                text!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14.0,
                  letterSpacing: 3.0,
                  // color: Color(0xffBAD0D0),
                ),
              )
            : Text(
                text!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 8.0,
                  // letterSpacing: 3.0,
                  // color: Color(0xffBAD0D0),
                ),
              ),
      ),
    );
  }
}

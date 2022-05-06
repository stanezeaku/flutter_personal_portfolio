import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifeetech/screens/Widget/contact_form.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Take your Project from Concept to Completion.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 290,
          child: SvgPicture.asset(
            "assets/icons/complete.svg",
          ),
        ),
        const ContactForm(),
      ],
    );
  }
}

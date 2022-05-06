// Copyright (c) 2022 Stanley Ezeaku

import 'package:flutter/material.dart';
import 'package:ifeetech/responsive.dart';
import 'package:ifeetech/screens/Widget/desktopcontact.dart';
import 'package:ifeetech/screens/Widget/mobile_contact.dart';
import 'package:ifeetech/screens/Widget/custom_text.dart';

import '../../constants.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 60, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(
                  text: "Let's",
                  textsize: 26.0,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                const CustomText(
                  text: "Talk",
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
              height: 20,
            ),
            !Responsive.isMobile(context)
                ? const DesktopContact()
                : const MobileContact(),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeQuote extends StatefulWidget {
  const HomeQuote({
    Key? key,
  }) : super(key: key);

  @override
  _HomeQuoteState createState() => _HomeQuoteState();
}

class _HomeQuoteState extends State<HomeQuote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        color: const Color(0xFFFFE0E0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -50),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/IMG_7344.jpeg'),
                ),
              ),
            ),
          ),
          const Text(
            "Never have ideas come out fully formed. They only become clearer as you work on them. You just have to get started.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Stanley Ezeaku",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

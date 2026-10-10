import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Example"),
          backgroundColor: Colors.lightBlue,
        ),

        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Box(text: "Mohamed Elhelow", fontSize: 18, isTextBold: true),
              const SizedBox(height: 10),
              Box(
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                isTextBold: false,
              ),
              const SizedBox(height: 10),
              const Stars(),
              const SizedBox(height: 10),
              CardInfo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String text;
  final double? fontSize;
  final bool isTextBold;

  Box({super.key, required this.text, this.fontSize, required this.isTextBold});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffe6f0fa),
        border: Border.all(color: Colors.black, width: 2),
      ),
      width: double.infinity,

      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: isTextBold ? FontWeight.w600 : null,
          color: Colors.grey[700],
          fontSize: fontSize,
        ),
      ),
    );
  }
}

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffe6f0fa),
        border: Border.all(color: Colors.black, width: 2),
      ),
      width: double.infinity,

      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
          Text("170 Reviews"),
        ],
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffe6f0fa),
        border: Border.all(color: Colors.black, width: 2),
      ),
      width: double.infinity,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _handleInfo(Icons.account_box_sharp, "PREP:", "25 min"),
          _handleInfo(Icons.restaurant, "Feeds", "4-6"),
          _handleInfo(Icons.timer_sharp, "Cook", "1 hr"),
        ],
      ),
    );
  }

  Widget _handleInfo(IconData icon, String text1, String text2) {
    return Column(
      children: [
        Icon(icon, color: Colors.green[300]),
        Text(
          text1,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        Text(text2),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Safe King',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            bodyText1: GoogleFonts.oswald(textStyle: textTheme.bodyText1),
          ),
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  elevation: 20,
                  primary: Colors.black,
                  side: BorderSide(color: Colors.black, width: 2.5)))
          // buttonTheme:
          // buttonBarTheme: ButtonBarTheme().
          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            children: <Widget>[
              const SizedBox(height: 40),
              SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/logo.jpg")),
              const SizedBox(height: 20),
              const Text(
                'Safe King Token (SKING)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      html.window.open(
                          "https://poocoin.app/tokens/0x26eaa3a630af6954c9ad443f5968327e0c852043",
                          "SKING Poocoin");
                    },
                    child: Row(
                      children: const [
                        Icon(MdiIcons.chartLine),
                        Text(
                          "  Chart",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      html.window
                          .open("https://t.me/safekingbsc", "SKING Poocoin");
                    },
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.telegramPlane),
                        Text(
                          "  Telegram",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Tokenomics:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "%7 Safe Reward   %5 Marketing    %3 Liq",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Who are we and what is our purpose?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "As Safe Holders, our aim with this project is to both capture the King hype and add volume and buyers to SAFE by giving SAFE as a Reward.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Things to know:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "1. Sniper Bot from SAFE team is an upcoming utility for the main token, so be sure to hold until then and take profits responsibly."
                "\n2. Use cases can come if the community stays engaged",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "What can you do?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "With the hype that may occur in this project, the price of Safe may increase, so if you haven't bought it yet, you can get Safe, or you can get Safe King here and earn Safe with rewards and keep floor with us.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

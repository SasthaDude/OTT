import 'package:flutter/material.dart';
import 'package:ott/netflixGAME.dart';
import 'package:ott/netflixHOME.dart';
import 'package:ott/newsandhot.dart';

class OTTBOT extends StatefulWidget {
  const OTTBOT({super.key});

  @override
  State<OTTBOT> createState() => _OTTBOTState();
}

class _OTTBOTState extends State<OTTBOT> {

  int Page = 0;
  final screen = [
    HOME(),
    GAMENet(),
    NewHot(),

  ];
  void tap(screenNew)
  {
    setState(() {
      Page  = screenNew;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: screen[Page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.white,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad, color: Colors.white,), label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined, color: Colors.white,), label: "New&Hot"),
        ],
        currentIndex: Page,
        onTap: tap,

      ),
    );
  }
}

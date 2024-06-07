import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewHot extends StatefulWidget {
  const NewHot({super.key});

  @override
  State<NewHot> createState() => _NewHotState();
}

class _NewHotState extends State<NewHot> {

  final List topics = [
    "🍟 Coming Soon",
    "🔥 Everyone's Watching",
    "🎮 Games",
    "🔝 TOp 10 TV Shows",
    "🔝 Top 10 Movies",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("New&Hot", style: TextStyle(fontSize: 20, color: Colors.white),),
        actions: [
          Icon(Icons.search_rounded, color: Colors.white, size: 30,)
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/23,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(
                          color: Colors.white30
                      ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("🍟 Coming Soon",
                    style: TextStyle(color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),),
                ),
                SizedBox(width: 10,),
                Container(
                  width: MediaQuery.of(context).size.width/1.8,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white30
                      ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("🔥 Everyone's Watching",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10,),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white30
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("🎮 Games",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10,),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white30
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("🔝 Top 10 TV Shows",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10,),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white30
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("🔝 Top 10 Movies",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
              ],

            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width/1.1,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/9,
                  width:  MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(color: Colors.red),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/9,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(color: Colors.red),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

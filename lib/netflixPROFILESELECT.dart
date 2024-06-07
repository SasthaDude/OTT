import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ott/NetflixBOT.dart';
import 'package:ott/netflixHOME.dart';

class PROSEL extends StatefulWidget {
  const PROSEL({super.key});

  @override
  State<PROSEL> createState() => _PROSELState();
}

class _PROSELState extends State<PROSEL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
          Row(
            children: [
              Spacer(),
              Container(
                  width: MediaQuery.of(context).size.width*0.3,
                  child: Image.asset("images/neticonfull.png",
                  fit: BoxFit.contain,
                  ),

              ),
              Spacer(),
              Container(
                  width: MediaQuery.of(context).size.width*0.1,
                  child: Icon(Icons.mode_edit_outline_outlined, size: 25, color: Colors.white,)),
            ],
          ),
          SizedBox(height: 200,),
          Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width/1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Who's Watching?", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => OTTBOT()
                                ),
                              );
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height/10,
                            width: MediaQuery.of(context).size.width/5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/e/ea/Heath_Ledger_%282%29.jpg"),
                                fit: BoxFit.fill,
                              ),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Mine", style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width/5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/getwatch.jpg"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(),
                              borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("You", style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width/5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://images.ctfassets.net/9uhkiji6mhey/5dVvWjLeow0bEDqzBUlfex/7fef3dcd6bb3d3a2a349ec73bcb60e57/03_Netflix_Kids.jpg"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(),
                              borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Children", style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width/5,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white12),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Icon(Icons.add, size: 50,color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Add profile", style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,

    );
  }
}

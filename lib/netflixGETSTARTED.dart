import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/netflixEmail.dart';
import 'package:ott/netflixLOGIN.dart';

class GETSTARTED extends StatefulWidget {
  const GETSTARTED({super.key});

  @override
  State<GETSTARTED> createState() => _GETSTARTEDState();
}

class _GETSTARTEDState extends State<GETSTARTED> {
  int currentPage = 0;
  List get = [
    "images/get1.png",
    "images/get3.jpg",
    "images/get1.png",
    "images/getwatch.jpg",
  ];
  List textI = [
    "Unlimited entertainment, one low price",
    "Download and watch offline",
    "Watch everywhere",
    "Cancel online at any time",
  ];
  List textT = [
    "All of Netflix, starting at just ₹149",
    "Always have something to watch",
    "Stream on your phone, laptop, TV and more",
    "Join today, no reason to wait",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(children: [
          CarouselSlider.builder(
            itemCount: get.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int PageViewIndex) {
              return Container(
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(get[itemIndex]),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 680,),
                    Text(
                      textI[itemIndex],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textT[itemIndex],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height/1.04,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
                autoPlayCurve: Curves.fastOutSlowIn,
                initialPage: 0,
                viewportFraction: 1,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPage = index;
                  });
                }),
          ),
          Positioned(
            top: 6,
            left: 10,
            child: Container(
                height: MediaQuery.of(context).size.height/15,
                width: MediaQuery.of(context).size.width/8,
                child: Image.asset("images/neticon.png")),
          ),
          Positioned(
              top: 18,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.height/5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PRIVACY",
                      style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LOGIN()),
                            );
                          });
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 20,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Icon(
                      Icons.more_vert,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ],
                ),
              )),
          Positioned(
            bottom: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DotsIndicator(
                  dotsCount: get.length,
                  position: currentPage.toInt(),
                  decorator: DotsDecorator(
                    activeColor: Colors.red,
                  ),
                  //axis: Axis.horizontal,
                ),
                SizedBox(height: 15,),
                Card(
                  elevation: 15,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EMAIL()),
                        );
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.02,
                      height: MediaQuery.of(context).size.height/20,
                      decoration: BoxDecoration(
                        border: Border.all(
                        ),
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.red.shade900,
                      ),
                      child: Center(
                          child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ]
        ),
      ),
    );
  }
}

// appBar: AppBar(
//   backgroundColor: Colors.black,
//   leading: Image.asset("images/Netflixicon.png"),
//   actions: [
//     Text("PRIVACY", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),
//     SizedBox(width: 20,),
//     GestureDetector(
//         onTap: (){
//           setState(() {
//             Navigator.push(context,
//               MaterialPageRoute(
//                   builder: (context) => LOGIN()
//               ),
//             );
//           });
//         },
//         child: Text("LOGIN", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),)),
//     SizedBox(width: 20,),
//     Icon(Icons.more_vert, size: 30, color: Colors.white,),
//   ],
// ),
// DotsIndicator(
//   dotsCount: get.length,
//   position: currentPage.toInt(),
//   //axis: Axis.horizontal,
// ),
// Card(
//   elevation: 15,
//   child: GestureDetector(
//     onTap: (){
//       setState(() {
//         Navigator.push(context,
//           MaterialPageRoute(
//               builder: (context) => EMAIL()
//           ),
//         );
//       });
//     },
//     child: Container(
//       width: double.infinity,
//       height: 50,
//       decoration: BoxDecoration(
//         border: Border.all(),
//         color: Colors.red.shade900,
//       ),
//       child: Center(child: Text("Get Started", style: TextStyle(fontSize: 20, color: Colors.white),)),
//     ),
//   ),
// ),

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GAMENet extends StatefulWidget {
  const GAMENet({super.key});

  @override
  State<GAMENet> createState() => _GAMEState();
}

class _GAMEState extends State<GAMENet> {

  final List Gta = [
    "images/GTA/img.png",
    "images/GTA/img_1.png",
    "images/GTA/img_2.png",
    "images/GTA/img_3.png",
    "images/GTA/img_4.png",
    "images/GTA/img_5.png",
  ];
  final List GtaName = [
    "GTA1: ViceCity \nDownload on your device",
    "GTA2: San Andreas \nDownload on your device",
    "GTA3: Liberty city stories \nDownload on your device",
    "GTA4: Londan 1969 \nDownload on your device",
    "GTA5: London 1961 \nDownload on your device",
    "GTA6: The Lost and Damned \nDownload on your device",
  ];

  final List retro = [
    "images/retrogames/img.png",
    "images/retrogames/img_1.png",
    "images/retrogames/img_2.png",
    "images/retrogames/img_3.png",
    "images/retrogames/img_5.png",
    "images/retrogames/img_6.png",
    "images/retrogames/img_7.png",
  ];
  final List retroNames = [
    "PacMan",
    "Mario",
    "Zelda",
    "Games",
    "Mighty",
    "Arcade",
    "StarWars"
  ];

  final List physicsBasedGames = [
    "images/physicsbasedgames/img.png",
    "images/physicsbasedgames/img_1.png",
    "images/physicsbasedgames/img_2.png",
    "images/physicsbasedgames/img_3.png",
    "images/physicsbasedgames/img_5.png",
    "images/physicsbasedgames/img_6.png",
    "images/physicsbasedgames/img_4.png",
  ];
  final List pbgName = [
    "Thrower",
    "Bomber",
    "Construct",
    "Finder",
    "Falling Ball",
    "Ballz",
    "Ball Physics",
  ];

  final List sportS = [
    "images/sports/img.png",
    "images/sports/img_1.png",
    "images/sports/img_2.png",
    "images/sports/img_3.png",
    "images/sports/img_4.png",
    "images/sports/img_5.png",
    "images/sports/img_6.png",
    "images/sports/img_7.png",
  ];
  final List sportName = [
    "Cricket",
    "Football",
    "Tennis",
    "Hockey",
    "Kabadi",
    "Olympic",
    "Badminton",
    "Pool",

  ];

  @override
  Widget build(BuildContext context) {

    WidgetsFlutterBinding.ensureInitialized();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Games", style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, size: 25, color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2.1,
              width: MediaQuery.of(context).size.width/1,
              child: PlayerWidget(

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Continue Playing", style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/9,
              width: MediaQuery.of(context).size.width/1,
              child: ListView.builder(
                  itemCount: Gta.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                      child: Card(
                        elevation: 10,
                        color: Colors.black87,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height/1,
                                width: MediaQuery.of(context).size.width/4.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Gta[index]),
                                    fit: BoxFit.fill,
                                  ),
                                  //border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(GtaName[index],
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Retro Games", style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/4,
              child: ListView.builder(
                  itemCount: retro.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/5,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(retro[index]),
                                fit: BoxFit.fill,
                              ),
                              //border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(retroNames[index], style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Physics-Based Games", style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/4,
              child: ListView.builder(
                  itemCount: physicsBasedGames.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/5,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(physicsBasedGames[index]),
                                fit: BoxFit.fill,
                              ),
                              //border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(pbgName[index], style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Sports", style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/4,
              child: ListView.builder(
                  itemCount: sportS.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/5,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(sportS[index]),
                                fit: BoxFit.fill,
                              ),
                              //border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(sportName[index], style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],
                      ),
                    );
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  bool isVideoIntialized = false;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse("C:/Users/Classic/Downloads/VID_20240514_100505.mp4"));

    chewieController = ChewieController(videoPlayerController: videoPlayerController,
      autoPlay: true,
    looping: true);

    videoPlayerController.initialize().then((value) {
      setState(() {
       isVideoIntialized = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    if(isVideoIntialized) {
      return AspectRatio(aspectRatio: videoPlayerController.value.aspectRatio,
        child: Chewie(
          controller: chewieController,
        ),
      );
    } else{
      return CircularProgressIndicator();
    }
  }
}

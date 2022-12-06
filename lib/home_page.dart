import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final assetsAudioPlayer = AssetsAudioPlayer();
  Future<void> playMusic() async {
    assetsAudioPlayer.open(
      Audio("assets/audios/tabi_efendim.mp3"),
    );
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.5,
              height: size.width * 0.5,
              child: NeumorphicButton(
                tooltip: "Uzun Basma :)",
                child: Center(
                    child: Text("Tıkla!",
                    style: GoogleFonts.poppins(
                      fontSize: 20
                    ),
                    ),
                ),
                onPressed: (){
                  playMusic();
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

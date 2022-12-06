import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
/*
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1, milliseconds: 30), () async {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => new HomePage()));
    });
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.6,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                semanticContainer: true,
                color: Colors.white,
                shape: CircleBorder(),
                shadowColor: Colors.grey,
                elevation: 5,
                child: Center(
                  child: Image.asset("assets/launcher_icon.png")
                    ),
                  ),
                ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Tabi Efendim!",
              style: GoogleFonts.poppins(
                letterSpacing: 5,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

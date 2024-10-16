import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_krushi/Screens/homepage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Stack(children: [
          Positioned(
            bottom: 50,
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Lottie.asset("assets/tractor.json", fit: BoxFit.cover),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 3,
              child: Lottie.asset(
                "assets/load copy.json",
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Text(
                "नमस्कार,शेती मित्र!",
                style: GoogleFonts.poppins(fontSize: 40, color: Colors.white),
              ))),
        ]),
      ),
    );
  }
}

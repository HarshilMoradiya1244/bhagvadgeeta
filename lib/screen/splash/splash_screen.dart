import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(children: [
            Image.asset(
              "assets/images/splash.jpg",
              height: MediaQuery.sizeOf(context).height,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: const Alignment(0, -0.9),
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'શ્રીમદ્ ભગવદ્ ગીતા',
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 300),
                    colors: [
                      Colors.orange.shade900,
                      Colors.white,
                      Colors.black
                    ],
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 500),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black87
        ),
        child: Center(
          child: Image.asset(width: 150,height: 150,'assets/images/spotify.png'),
        ),
      ),
    );
  }
}

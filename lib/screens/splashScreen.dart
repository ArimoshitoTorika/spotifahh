import 'package:flutter/material.dart';
import 'package:spotifahh/style/myColor.dart';

import 'mainScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }
  Future<void> _navigateToHome() async {
    // Simulate loading (fetching data, checking auth, etc.)
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      _createFadeScaleRoute(const MainScreen()),
    );
  }

  // Custom route with fade + scale transition
  PageRouteBuilder _createFadeScaleRoute(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final fadeAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        );

        final scaleAnimation = Tween<double>(
          begin: 0.95,
          end: 1.0,
        ).animate(
          CurvedAnimation(parent: animation, curve: Curves.easeOut),
        );

        return FadeTransition(
          opacity: fadeAnimation,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: MyColorLib.mainBg
        ),
        child: Center(
          child: Image.asset(width: 150,height: 150,'assets/images/spotify.png'),
        ),
      ),
    );
  }
}

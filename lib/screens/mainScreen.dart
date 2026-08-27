import 'package:flutter/material.dart';
import 'package:spotifahh/screens/homeScreen.dart';
import 'package:spotifahh/style/myColor.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: Container(
        height: 50,
        color: MyColorLib.mainBg,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_filled,color: Colors.white,),
            Icon(Icons.search,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}

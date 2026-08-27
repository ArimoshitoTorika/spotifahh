import 'package:flutter/material.dart';
import 'package:spotifahh/style/myColor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabsList=[
    'All','Music','Podcast'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColorLib.mainBg
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9999),
                  child: Image.asset(
                    'assets/images/pfp.jpg',
                    width: 40,
                    height: 40,
                  ),
                ),
                ListView.builder(scrollDirection: Axis.horizontal,itemCount: tabsList.length,itemBuilder:(context,index){

                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}

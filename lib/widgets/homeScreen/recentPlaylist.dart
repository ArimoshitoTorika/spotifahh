import 'package:flutter/material.dart';
import 'package:spotifahh/style/textStyle.dart';

import '../../style/myColor.dart';

class RecentPlaylistHome extends StatefulWidget {
  const RecentPlaylistHome({super.key, required this.imgPath, required this.name,});
  final String imgPath;
  final String name;
  @override
  State<RecentPlaylistHome> createState() => _RecentPlaylistHomeState();
}

class _RecentPlaylistHomeState extends State<RecentPlaylistHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColorLib.secondaryBg,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(widget.imgPath,width: 60,height: 60,fit: BoxFit.cover,),
          ),
          SizedBox(width: 10),
          SizedBox(
            width: 100,
            child: Text(
              widget.name,
              style: MyTextStyleLib.recentPlaylistTitle
            ),
          ),
        ],
      ),
    );
  }
}
class RecentPlaylist{
  final String image;
  final String name;
  RecentPlaylist({required this.image, required this.name});
}
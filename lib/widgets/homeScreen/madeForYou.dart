import 'package:flutter/material.dart';

import '../../data/appData.dart';
class MadeForYouCard extends StatefulWidget {
  const MadeForYouCard({super.key});

  @override
  State<MadeForYouCard> createState() => _MadeForYouCardState();
}
bool isMuted = true;
class _MadeForYouCardState extends State<MadeForYouCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.orangeAccent,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/MusicAlbumCovers/3.jpeg',
                  width: 100,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SUN OWA BEACH',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Spotifahh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(Icons.more_horiz,color: Colors.white,),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '50 songs •',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Text(
                    AppData
                        .recommendedStationCardData[1]
                        .artistNames
                        .join(', '),
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    isMuted = !isMuted;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(999999),
                  ),
                  child: Row(
                    spacing: 6,
                    children: [
                      isMuted? Icon(Icons.volume_off, color: Colors.white,size: 20,): Icon(Icons.volume_up, color: Colors.white,size: 20,),
                      Text(
                        'Preview Playlist',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                spacing: 20,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(color: Colors.white,width: 2),
                    ),
                    child: Icon(Icons.add, color: Colors.white,size: 18,),
                  ),
                  Icon(
                    Icons.play_circle,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

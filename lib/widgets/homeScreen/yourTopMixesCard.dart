import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class YourTopMixesCard extends StatefulWidget {
  const YourTopMixesCard({super.key});

  @override
  State<YourTopMixesCard> createState() => _YourTopMixesCardState();
}

class _YourTopMixesCardState extends State<YourTopMixesCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              width: 160,
              height: 160,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.blueAccent,
                  image: DecorationImage(
                    image: AssetImage('assets/images/MusicAlbumCovers/1.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 5),
                      child: SvgPicture.asset('assets/icons/spotify_dark.svg',width: 16,)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                              ),
                            ),
                          ),
                          Expanded(flex: 5, child: SizedBox()),
                          Expanded(
                            flex: 90,
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                              ),
                              child: Text('Jazz Mix',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 160,
          child: Text(
            'Jazz Mix',
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ],
    );
  }
}

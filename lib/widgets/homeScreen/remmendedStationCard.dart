import 'package:flutter/material.dart';

class RecommendedStationsCard extends StatefulWidget {
  final String cardTitle;
  final String leftAlbum;
  final String centerAlbum;
  final String rightAlbum;
  final String artistNames;
  final Color cardBgColor;
  const RecommendedStationsCard({super.key, required this.cardTitle, required this.leftAlbum, required this.centerAlbum, required this.rightAlbum, required this.artistNames, required this.cardBgColor});
  @override
  State<RecommendedStationsCard> createState() =>
      _RecommendedStationsCardState();
}

class _RecommendedStationsCardState extends State<RecommendedStationsCard> {
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
                  color: widget.cardBgColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Image.asset('assets/images/spotify_dark.png',
                        width: 16,),
                      Text(
                        'RADIO', style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 18,
                            child: SizedBox(
                              width: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  9999,
                                ),
                                child: Image.asset(
                                  widget.leftAlbum,
                                  width: 90,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 18,
                            child: SizedBox(
                              width: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  9999,
                                ),
                                child: Image.asset(
                                  widget.rightAlbum,
                                  width: 90,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: widget.cardBgColor,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  999,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  9999,
                                ),
                                child: Image.asset(
                                  widget.centerAlbum,
                                  width: 90,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        widget.cardTitle,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 160,
          child: Text(
            widget.artistNames,
            maxLines: 2,
            style: TextStyle(color: Colors.white,overflow: TextOverflow.ellipsis,),
          ),
        ),
      ],
    );
  }
}
class RecommendedStationData{
  final List<String> albumCovers;
  final String cardName;
  final List<String> artistNames;
  final Color bgColor;
  RecommendedStationData({required this.albumCovers, required this.cardName, required this.artistNames, required this.bgColor});
}

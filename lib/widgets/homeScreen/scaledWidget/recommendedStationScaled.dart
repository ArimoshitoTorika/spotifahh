import 'package:flutter/material.dart';
class RecoomendedStationScaled extends StatefulWidget {
  const RecoomendedStationScaled({super.key, required this.cardTitle, required this.leftAlbum, required this.centerAlbum, required this.rightAlbum, required this.cardBgColor});
  final String cardTitle;
  final String leftAlbum;
  final String centerAlbum;
  final String rightAlbum;
  final Color cardBgColor;
  @override
  State<RecoomendedStationScaled> createState() => _RecoomendedStationScaledState();
}

class _RecoomendedStationScaledState extends State<RecoomendedStationScaled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
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
                        top: 5.0,
                        left: 5,
                        right: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/spotify_dark.png',
                            width: 10,
                          ),
                          Text(
                            'RADIO',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 9,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 10,
                            child: SizedBox(
                              width: 40,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9999),
                                child: Image.asset(widget.leftAlbum, width: 90),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 10,
                            child: SizedBox(
                              width: 40,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9999),
                                child: Image.asset(
                                  widget.rightAlbum,
                                  width: 90,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: widget.cardBgColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9999),
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
                    SizedBox(height: 0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        widget.cardTitle,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
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
      ],
    );
  }
}

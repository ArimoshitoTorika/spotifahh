import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotifahh/gen/assets.gen.dart';

class YourTopMixesCard extends StatefulWidget {
  final String cardName;
  final String cardTitle;
  final Color themeColor;
  final String cardImage;

  const YourTopMixesCard({
    super.key,
    required this.cardName,
    required this.cardTitle,
    required this.themeColor,
    required this.cardImage,
  });

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
                    image: AssetImage(widget.cardImage),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 5),
                      child: SvgPicture.asset(
                        'assets/icons/spotify-dark.svg',
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                          widget.themeColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                color: widget.themeColor,
                              ),
                            ),
                          ),
                          Expanded(flex: 5, child: SizedBox()),
                          Expanded(
                            flex: 90,
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              height: 20,
                              decoration: BoxDecoration(
                                color: widget.themeColor,
                              ),
                              child: Text(
                                widget.cardName,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
            widget.cardTitle,
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
class YourTopMixesCardData{
  final List<String> cardTitleList;
  final String cardName;
  final String cardImage;
  final Color cardTheme;

  YourTopMixesCardData({required this.cardTitleList, required this.cardName, required this.cardImage, required this.cardTheme});
}
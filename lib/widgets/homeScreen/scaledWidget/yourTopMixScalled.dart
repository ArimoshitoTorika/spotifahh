import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YourTopMixScaled extends StatefulWidget {
  const YourTopMixScaled({super.key, required this.cardImage, required this.themeColor, required this.cardName});
 final String cardImage;
 final Color themeColor;
 final String cardName;
  @override
  State<YourTopMixScaled> createState() => _YourTopMixScaledState();
}

class _YourTopMixScaledState extends State<YourTopMixScaled> {
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
                        width: 12,
                        height: 12,
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
                              height: 12,
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
                              height: 12,
                              decoration: BoxDecoration(
                                color: widget.themeColor,
                              ),
                              child: Text(widget.cardName,style: TextStyle(color: Colors.white,fontSize: 9),),
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
      ],
    );
  }
}

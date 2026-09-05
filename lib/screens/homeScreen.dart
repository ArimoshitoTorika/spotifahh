import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifahh/data/appData.dart';
import 'package:spotifahh/style/myColor.dart';
import 'package:spotifahh/style/textStyle.dart';
import 'package:spotifahh/widgets/homeScreen/madeForYou.dart';
import 'package:spotifahh/widgets/homeScreen/recentPlaylist.dart';
import 'package:spotifahh/widgets/homeScreen/remmendedStationCard.dart';
import 'package:spotifahh/widgets/homeScreen/tabs.dart';
import 'package:spotifahh/widgets/homeScreen/yourTopMixesCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabsList = ['All', 'Music', 'Podcast'];
  int isClickedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      decoration: BoxDecoration(color: MyColorLib.mainBg),
      // padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9999),
                  child: Image.asset(
                    'assets/images/pfp.jpg',
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabsList.length,
                      separatorBuilder: (context, index) => SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        return HomeScrTabs(
                          isActive: isClickedTab == index ? true : false,
                          tabName: tabsList[index],
                          onTab: () {
                            setState(() {
                              isClickedTab = index;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 10,
                      ),
                      itemCount: 8,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 3.4,
                      ),
                      itemBuilder: (context, index) {
                        return RecentPlaylistHome(
                          imgPath: AppData.recentPlaylistList[index].image,
                          name: AppData.recentPlaylistList[index].name,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      'Recommended Stations',
                      style: MyTextStyleLib.contentTitle,
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      itemCount: AppData.recommendedStationCardData.length,
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = AppData.recommendedStationCardData[index];
                        return SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RecommendedStationsCard(
                              cardTitle: item.cardName,
                              leftAlbum: item.albumCovers[0],
                              centerAlbum: item.albumCovers[1],
                              rightAlbum: item.albumCovers[2],
                              artistNames: item.artistNames.join(', '),
                              cardBgColor: item.bgColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      'Your top mixes',
                      style: MyTextStyleLib.contentTitle,
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      itemCount: AppData.yourTopMixList.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        final item = AppData.yourTopMixList[index];
                        return SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: YourTopMixesCard(
                              cardName: item.cardName,
                              cardTitle: item.cardTitleList.join(', '),
                              themeColor: item.cardTheme,
                              cardImage: item.cardImage,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      'Made For You',
                      style: MyTextStyleLib.contentTitle,
                    ),
                  ),
                  MadeForYouCard(),
                  SizedBox(height: 50,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spotifahh/style/myColor.dart';
import 'package:spotifahh/style/textStyle.dart';
import 'package:spotifahh/widgets/homeScreen/recentPlaylist.dart';
import 'package:spotifahh/widgets/homeScreen/tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabsList = ['All', 'Music', 'Podcast'];
  int isClickedTab = 0;
  List<RecentPlaylist> recentPlaylistList = [
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/1.jpeg',
      name: 'Bewitched',
    ),
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/2.jpeg',
      name: 'HIT ME HARD AND SOFT',
    ),
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/3.jpeg',
      name: 'Born to Die',
    ),
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/4.jpeg',
      name: 'Submarine',
    ),
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/5.jpeg',
      name: 'NEVER ENOUGH',
    ),
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/6.jpeg',
      name: 'Pony',
    ),
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/7.jpeg',
      name: 'Slay Queen',
    ),
    RecentPlaylist(
      image: 'assets/images/MusicAlbumCovers/8.jpeg',
      name: 'TV GIRL',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MyColorLib.mainBg),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
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
            SizedBox(
              height: 270,
              child: Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 16),
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
                      imgPath: recentPlaylistList[index].image,
                      name: recentPlaylistList[index].name,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Recommended Stations',
                style: MyTextStyleLib.contentTitle,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 160,
                  height: 160,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('1'), Text('2')],
                        ),
                        SizedBox(
                          height: 90,
                          child: Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 18,
                                    child: Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.purple,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          9999,
                                        ),
                                        child: Image.asset(
                                          'assets/images/MusicAlbumCovers/1.jpeg',
                                          width: 90,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 18,
                                    child: Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.purple,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          9999,
                                        ),
                                        child: Image.asset(
                                          'assets/images/MusicAlbumCovers/2.jpeg',
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
                                          color: Colors.purple,
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
                                          'assets/images/MusicAlbumCovers/3.jpeg',
                                          width: 90,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'Daily Mix',
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
                'Laufey, Lana Del Rey, Billie Eilish',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

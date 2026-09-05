import 'package:flutter/material.dart';
import 'package:spotifahh/widgets/homeScreen/yourTopMixesCard.dart';

import '../widgets/homeScreen/recentPlaylist.dart';
import '../widgets/homeScreen/remmendedStationCard.dart';
import 'dart:math';

final List<Color> colorList = [
  Colors.redAccent,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.orangeAccent,
  Colors.pinkAccent,
  Colors.purpleAccent,
  Colors.blue,
  Colors.green,
  Colors.blueGrey,
];

final Color randomColor = colorList[Random().nextInt(colorList.length)];

class AppData {
  static List<RecentPlaylist> recentPlaylistList = [
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
  static List<RecommendedStationData> recommendedStationCardData = [
    RecommendedStationData(
      albumCovers: [
        'assets/images/MusicAlbumCovers/1.jpeg',
        'assets/images/MusicAlbumCovers/2.jpeg',
        'assets/images/MusicAlbumCovers/3.jpeg',
      ],
      cardName: 'Daily Mix',
      artistNames: [
        'Laufey',
        'Billie Eilish',
        'Lana Del Rey',
        'Rex Orange County',
      ],
      bgColor: Colors.blueAccent,
    ),
    RecommendedStationData(
      albumCovers: [
        'assets/images/MusicAlbumCovers/4.jpeg',
        'assets/images/MusicAlbumCovers/5.jpeg',
        'assets/images/MusicAlbumCovers/6.jpeg',
      ],
      cardName: 'Happy Mix',
      artistNames: [
        'Billie Eilish',
        'Lana Del Rey',
        'Rex Orange County',
        'Taylor ,The Creator'
      ],
      bgColor: Colors.orangeAccent,
    ),
    RecommendedStationData(
      albumCovers: [
        'assets/images/MusicAlbumCovers/7.jpeg',
        'assets/images/MusicAlbumCovers/8.jpeg',
        'assets/images/MusicAlbumCovers/1.jpeg',
      ],
      cardName: 'Dejavu',
      artistNames: [
        'Laufey',
        'Billie Eilish',
        'Lana Del Rey',
        'Rex Orange County',
      ],
      bgColor: Colors.greenAccent,
    ),
    RecommendedStationData(
      albumCovers: [
        'assets/images/MusicAlbumCovers/2.jpeg',
        'assets/images/MusicAlbumCovers/3.jpeg',
        'assets/images/MusicAlbumCovers/4.jpeg',
      ],
      cardName: 'Pop Mix',
      artistNames: [
        'Laufey',
        'Billie Eilish',
        'Lana Del Rey',
        'Rex Orange County',
      ],
      bgColor: Colors.pinkAccent,
    ),
  ];
  static List<YourTopMixesCardData> yourTopMixList = [
    YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/7.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/6.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/5.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/4.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/3.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/2.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/1.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),YourTopMixesCardData(
      cardTitleList: [
        'The Maria',
        'Le Tigre',
        'Lana Del Rey',
        'TV Girl',
        'Conan Grey',
      ],
      cardName: 'Art Pop Mix',
      cardImage: 'assets/images/MusicAlbumCovers/8.jpeg',
      cardTheme: colorList[Random().nextInt(colorList.length)],
    ),
  ];
}

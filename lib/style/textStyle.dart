import 'package:flutter/material.dart';

class MyTextStyleLib {
  static TextStyle contentTitle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static TextStyle recentPlaylistTitle = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.ellipsis,
  );
}

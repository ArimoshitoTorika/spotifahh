// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/spotify-dark.svg
  String get spotifyDark => 'assets/icons/spotify-dark.svg';

  /// File path: assets/icons/spotify.svg
  String get spotify => 'assets/icons/spotify.svg';

  /// List of all assets
  List<String> get values => [spotifyDark, spotify];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/MusicAlbumCovers
  $AssetsImagesMusicAlbumCoversGen get musicAlbumCovers =>
      const $AssetsImagesMusicAlbumCoversGen();

  /// File path: assets/images/myPfp.png
  AssetGenImage get myPfp => const AssetGenImage('assets/images/myPfp.png');

  /// File path: assets/images/pfp.jpg
  AssetGenImage get pfp => const AssetGenImage('assets/images/pfp.jpg');

  /// File path: assets/images/spotify.png
  AssetGenImage get spotify => const AssetGenImage('assets/images/spotify.png');

  /// File path: assets/images/spotify_dark.png
  AssetGenImage get spotifyDark =>
      const AssetGenImage('assets/images/spotify_dark.png');

  /// List of all assets
  List<AssetGenImage> get values => [myPfp, pfp, spotify, spotifyDark];
}

class $AssetsImagesMusicAlbumCoversGen {
  const $AssetsImagesMusicAlbumCoversGen();

  /// File path: assets/images/MusicAlbumCovers/1.jpeg
  AssetGenImage get a1 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/1.jpeg');

  /// File path: assets/images/MusicAlbumCovers/2.jpeg
  AssetGenImage get a2 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/2.jpeg');

  /// File path: assets/images/MusicAlbumCovers/3.jpeg
  AssetGenImage get a3 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/3.jpeg');

  /// File path: assets/images/MusicAlbumCovers/4.jpeg
  AssetGenImage get a4 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/4.jpeg');

  /// File path: assets/images/MusicAlbumCovers/5.jpeg
  AssetGenImage get a5 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/5.jpeg');

  /// File path: assets/images/MusicAlbumCovers/6.jpeg
  AssetGenImage get a6 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/6.jpeg');

  /// File path: assets/images/MusicAlbumCovers/7.jpeg
  AssetGenImage get a7 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/7.jpeg');

  /// File path: assets/images/MusicAlbumCovers/8.jpeg
  AssetGenImage get a8 =>
      const AssetGenImage('assets/images/MusicAlbumCovers/8.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [a1, a2, a3, a4, a5, a6, a7, a8];
}

abstract final class Assets {
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

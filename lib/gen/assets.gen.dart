/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  $AssetsImgBackgroundGen get background => const $AssetsImgBackgroundGen();
  $AssetsImgIconsGen get icons => const $AssetsImgIconsGen();
  $AssetsImgPostsGen get posts => const $AssetsImgPostsGen();
  $AssetsImgStoriesGen get stories => const $AssetsImgStoriesGen();
}

class $AssetsImgBackgroundGen {
  const $AssetsImgBackgroundGen();

  AssetGenImage get onboardingImages =>
      const AssetGenImage('assets/img/background/onboarding_images.png');
  AssetGenImage get splashBackground =>
      const AssetGenImage('assets/img/background/splash_background.png');
}

class $AssetsImgIconsGen {
  const $AssetsImgIconsGen();

  AssetGenImage get articles =>
      const AssetGenImage('assets/img/icons/Articles.png');
  AssetGenImage get home => const AssetGenImage('assets/img/icons/Home.png');
  SvgGenImage get logo => const SvgGenImage('assets/img/icons/LOGO.svg');
  AssetGenImage get menu => const AssetGenImage('assets/img/icons/Menu.png');
  AssetGenImage get search =>
      const AssetGenImage('assets/img/icons/Search.png');
  AssetGenImage get category1 =>
      const AssetGenImage('assets/img/icons/category_1.png');
  AssetGenImage get category2 =>
      const AssetGenImage('assets/img/icons/category_2.png');
  AssetGenImage get category3 =>
      const AssetGenImage('assets/img/icons/category_3.png');
  AssetGenImage get category4 =>
      const AssetGenImage('assets/img/icons/category_4.png');
  AssetGenImage get notification =>
      const AssetGenImage('assets/img/icons/notification.png');
  AssetGenImage get plus => const AssetGenImage('assets/img/icons/plus.png');
}

class $AssetsImgPostsGen {
  const $AssetsImgPostsGen();

  $AssetsImgPostsLargeGen get large => const $AssetsImgPostsLargeGen();
  $AssetsImgPostsSmallGen get small => const $AssetsImgPostsSmallGen();
}

class $AssetsImgStoriesGen {
  const $AssetsImgStoriesGen();

  AssetGenImage get story1 =>
      const AssetGenImage('assets/img/stories/story_1.jpg');
  AssetGenImage get story10 =>
      const AssetGenImage('assets/img/stories/story_10.jpg');
  AssetGenImage get story2 =>
      const AssetGenImage('assets/img/stories/story_2.jpg');
  AssetGenImage get story3 =>
      const AssetGenImage('assets/img/stories/story_3.jpg');
  AssetGenImage get story4 =>
      const AssetGenImage('assets/img/stories/story_4.jpg');
  AssetGenImage get story5 =>
      const AssetGenImage('assets/img/stories/story_5.jpg');
  AssetGenImage get story6 =>
      const AssetGenImage('assets/img/stories/story_6.jpg');
  AssetGenImage get story7 =>
      const AssetGenImage('assets/img/stories/story_7.jpg');
  AssetGenImage get story8 =>
      const AssetGenImage('assets/img/stories/story_8.jpg');
  AssetGenImage get story9 =>
      const AssetGenImage('assets/img/stories/story_9.jpg');
}

class $AssetsImgPostsLargeGen {
  const $AssetsImgPostsLargeGen();

  AssetGenImage get largePost1 =>
      const AssetGenImage('assets/img/posts/large/large_post_1.jpg');
  AssetGenImage get largePost2 =>
      const AssetGenImage('assets/img/posts/large/large_post_2.jpg');
  AssetGenImage get largePost3 =>
      const AssetGenImage('assets/img/posts/large/large_post_3.jpg');
  AssetGenImage get largePost4 =>
      const AssetGenImage('assets/img/posts/large/large_post_4.jpg');
  AssetGenImage get largePost5 =>
      const AssetGenImage('assets/img/posts/large/large_post_5.jpg');
  AssetGenImage get largePost6 =>
      const AssetGenImage('assets/img/posts/large/large_post_6.jpg');
}

class $AssetsImgPostsSmallGen {
  const $AssetsImgPostsSmallGen();

  AssetGenImage get smallPost1 =>
      const AssetGenImage('assets/img/posts/small/small_post_1.jpg');
  AssetGenImage get smallPost2 =>
      const AssetGenImage('assets/img/posts/small/small_post_2.jpg');
  AssetGenImage get smallPost3 =>
      const AssetGenImage('assets/img/posts/small/small_post_3.jpg');
  AssetGenImage get smallPost4 =>
      const AssetGenImage('assets/img/posts/small/small_post_4.jpg');
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}

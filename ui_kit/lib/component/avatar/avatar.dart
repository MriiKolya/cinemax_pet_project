import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.photoUrl});

  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    final style = context.avatarStyle;
    return CircleAvatar(
      radius: style.borderRadius,
      backgroundColor: style.borderColor,
      child: CircleAvatar(
          radius: style.avatarRadius,
          foregroundImage: CachedNetworkImageProvider(photoUrl),
          onForegroundImageError: (exception, stackTrace) {},
          backgroundImage: const AssetImage(
            ImageAssets.avatarPlaceholder,
            package: 'ui_kit',
          )),
    );
  }
}

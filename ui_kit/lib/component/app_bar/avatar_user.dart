import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class AvatarUser extends StatelessWidget {
  const AvatarUser({super.key, required this.photoUrl});

  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: PrimaryColor.blueAccent,
      child: CircleAvatar(
          radius: 19,
          foregroundImage: CachedNetworkImageProvider(photoUrl),
          onForegroundImageError: (exception, stackTrace) {},
          backgroundImage: const AssetImage(
            ImageAssets.avatarPlaceholder,
            package: 'ui_kit',
          )),
    );
  }
}

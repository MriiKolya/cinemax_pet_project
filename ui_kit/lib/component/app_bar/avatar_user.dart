import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class AvatarUser extends StatelessWidget {
  const AvatarUser({super.key, required this.photoUrl});

  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(
        imageUrl: photoUrl,
        progressIndicatorBuilder: (context, url, progress) =>
            CircularProgressIndicator(
          color: PrimaryColor.blueAccent,
          strokeWidth: 1,
        ),
        errorWidget: (context, url, error) => Image.asset(
          ImageAssets.avatarPlaceholder,
          package: 'ui_kit',
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/new_movie_card/new_movie_card_model.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class NewMovieCard extends StatelessWidget {
  const NewMovieCard({
    super.key,
    required this.cardMovie,
  });

  final NewMovieCardModel cardMovie;

  @override
  Widget build(BuildContext context) {
    final style = context.newMovieCardStyle;
    return SizedBox(
      width: style.width,
      height: style.height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: style.borderRadius,
          image: DecorationImage(
            image: CachedNetworkImageProvider(cardMovie.poster),
          ),
        ),
        child: Padding(
          padding: style.contentPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: IntrinsicWidth(
                  child: ListTile(
                    title: Text(cardMovie.title, style: style.titleStyle),
                    subtitle: Text(
                        cardMovie.release != null
                            ? 'On ${cardMovie.release}'
                            : 'No release date available',
                        style: style.releaseStyle),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

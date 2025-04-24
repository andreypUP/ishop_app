import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

import '../../domain/entities/image.dart' as model;
import '../../gen/assets.gen.dart';
import 'blur_hash_template.dart';

class ImageHolder extends StatelessWidget {
  final model.Image? image;
  final BoxFit fit;

  const ImageHolder({
    super.key,
    required this.image,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.ishopLogo.svg(),
      );
    } else {
      // We can safely assume that image is not null here
      final safeImage = image!;
      return LayoutBuilder(builder: (context, constraints) {
        return OctoImage.fromSet(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          fadeInDuration: Durations.medium1,
          fadeOutDuration: Durations.medium1,
          placeholderFadeInDuration: Durations.medium1,
          fadeInCurve: Easing.standardDecelerate,
          fadeOutCurve: Easing.standardDecelerate,
          image: CachedNetworkImageProvider(safeImage.url),
          octoSet: blurHash(safeImage.blurHash, fit: fit),
          fit: fit,
        );
      });
    }
  }
}

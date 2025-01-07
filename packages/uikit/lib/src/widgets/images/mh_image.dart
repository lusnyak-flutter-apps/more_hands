import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHImage extends StatelessWidget {
  const MHImage({
    super.key,
    this.size,
    this.imageUrl,
    this.aspectRatio = 1,
    this.emptyWidget,
    this.availableForegroundDecoration = true, this.borderRadius = 16.0,
  });

  final double? size;
  final double? borderRadius;
  final String? imageUrl;
  final double? aspectRatio;
  final Widget? emptyWidget;
  final bool availableForegroundDecoration;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: AspectRatio(
        aspectRatio: aspectRatio ?? 1.0,
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? CachedNetworkImage(
                width: size,
                imageUrl: imageUrl!,
                imageBuilder: (context, imageProvider) {
                  return _imageBuilder(imageProvider);
                },
                placeholder: (context, url) => _buildEmpty,
                errorWidget: (context, url, error) => _buildEmpty,
              )
            : _buildEmpty,
      ),
    );
  }

  Widget _imageBuilder(ImageProvider imageProvider) => AspectRatio(
        aspectRatio: aspectRatio ?? 1.0,
        child: Container(
          decoration: boxDecorator(imageProvider),
          foregroundDecoration: availableForegroundDecoration ? foregroundDecorator() : null,
          clipBehavior: Clip.hardEdge,
        ),
      );

  Widget get _buildEmpty => AspectRatio(
        aspectRatio: aspectRatio ?? 1.0,
        child: Container(
          alignment: Alignment.center,
          decoration: boxDecorator(),
          clipBehavior: Clip.hardEdge,
          foregroundDecoration: availableForegroundDecoration ? foregroundDecorator() : null,
          child: emptyWidget,
        ),
      );

  BoxDecoration foregroundDecorator() => BoxDecoration(
      borderRadius: BorderRadius.circular((borderRadius ?? 16).r),
      gradient:   LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            MHColors.blackBGColor.withValues(alpha:0.2),
            MHColors.blackBGColor,
          ],),);

  BoxDecoration boxDecorator([ImageProvider? image]) => BoxDecoration(
        color: MHColors.darkerGrayColor,
        borderRadius: BorderRadius.circular((borderRadius ?? 16).r),
        image: image != null
            ? DecorationImage(
                image: image,
                fit: BoxFit.cover,
              )
            : null,
      );
}

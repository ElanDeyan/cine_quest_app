import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';

class TitlePoster extends StatelessWidget {
  const TitlePoster({super.key, required this.id, required this.posterUrl});

  final int id;
  final String posterUrl;

  @override
  Widget build(BuildContext context) {
    return FastCachedImage(
      url: posterUrl,
      errorBuilder: (context, error, stackTrace) => const SizedBox(
        width: 185,
        height: 274,
        child: ColoredBox(color: Colors.red),
      ),
      loadingBuilder: (p0, p1) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

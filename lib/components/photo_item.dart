import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final VoidCallback? onTap;

  const PhotoItem({
    super.key,
    required this.imageUrl,
    this.width = double.infinity, // Default to full width
    this.height = double.infinity, // Default to full height
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              width: width,
              height: height,
              fit: BoxFit.fill,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constance/constance.dart';
import 'photo_item.dart';

class CustomSilverGrid extends StatelessWidget {
  CustomSilverGrid({super.key, required this.numberOfHorizontalItem});
  final int numberOfHorizontalItem;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: numberOfHorizontalItem,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        // Assuming KImageUrl is a non-null list
        return PhotoItem(imageUrl: KImageUrl[index]);
      },
      itemCount: KImageUrl?.length ?? 0, // Handle null case for KImageUrl
    );
  }
}

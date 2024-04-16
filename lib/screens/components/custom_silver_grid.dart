import 'package:flutter/material.dart';

import '../../constance/constance.dart';
import 'photo_item.dart';

class CustomSilverGrid extends StatelessWidget {
  CustomSilverGrid({super.key, required this.numberOfHorizontalItem});
  int numberOfHorizontalItem;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: numberOfHorizontalItem,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16),
      itemBuilder: (context, index) {
        return PhotoItem(imageUrl: KImageUrl[index]);
      },
      itemCount: KImageUrl.length,
    );
  }
}

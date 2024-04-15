import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String title;
  final Widget icon; // Custom widget for icon container
  final Color backgroundColor; // Renamed for clarity
  final TextStyle? textStyle; // Allow customization
  final Function() onTap;

  const CustomBottom({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    this.textStyle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Semantics(
        // Add semantic label
        label: 'Button: $title', // Example label
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                icon,
                const Spacer(),
                Text(
                  title,
                  style: textStyle ??
                      const TextStyle(
                          // Use default if not provided
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Example custom icon widget
class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;

  const CustomIconButton({
    super.key,
    required this.iconData,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}

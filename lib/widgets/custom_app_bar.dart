import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDarkMode;
  final int cartCount;
  final VoidCallback onThemeToggle;
  final VoidCallback onSettingsPressed;
  final VoidCallback onCartPressed;

  const CustomAppBar({
    super.key,
    required this.isDarkMode,
    required this.cartCount,
    required this.onThemeToggle,
    required this.onSettingsPressed,
    required this.onCartPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Flex Yemen'),
      backgroundColor: Colors.amber,
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: onCartPressed,
        ),
        IconButton(
          icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
          onPressed: onThemeToggle,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

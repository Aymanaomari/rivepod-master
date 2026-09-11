import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key, required this.routePath});

  final String routePath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, routePath),
      child: Text(routePath),
    );
  }
}

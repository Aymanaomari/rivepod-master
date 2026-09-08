import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.onPressed,
    required this.destination,
  });

  final void Function()? onPressed;
  final String destination;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed, child: Text(destination));
  }
}

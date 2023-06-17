import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RSSButton extends StatelessWidget {
  final String image;

  const RSSButton({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
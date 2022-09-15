import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  final Color colorIcon;

  const StarIcon({
    Key? key,
    this.colorIcon = const Color(0xffFFAB2E),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: Image.asset(
        'assets/star_yellow.png',
        width: 18,
        height: 18,
        color: colorIcon,
      ),
    );
  }
}

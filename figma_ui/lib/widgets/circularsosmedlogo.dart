import 'package:flutter/material.dart';

class CircularSosmedLogo extends StatelessWidget {
  final String link;
  final double size, paddingAllSize;

  CircularSosmedLogo({
    Key? key,
    required this.link,
    required this.size,
    required this.paddingAllSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingAllSize),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.black26,
            offset: Offset(.5, .5),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Image.asset(
        '$link',
        width: size,
        height: size,
      ),
    );
  }
}

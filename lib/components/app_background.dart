import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  const AppBackground({
    required this.child,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container( 
          height: size.height,
          width: size.width,
          color: gray_600,
        ),
        SizedBox(
          width: size.width,
          height: 180,
          child: Image.asset(
            "assets/images/cover_mobile.png",
            fit: BoxFit.cover,
          ),
        ), 
        child,
      ]
    );
  }
}

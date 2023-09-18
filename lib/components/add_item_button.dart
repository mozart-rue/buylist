import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddItemButton extends StatelessWidget {
  const AddItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: purple,
          borderRadius: BorderRadius.circular(120),
        ),
        child: SvgPicture.asset('assets/icons/plus.svg'),
      ),
    );
  }
}

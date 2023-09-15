import 'package:flutter/material.dart';
import 'package:buylist/constants.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Item',
          style: TextStyle(
            color: gray_200,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4,),
        SizedBox(
          width: size.width * 0.85,
          height: 40,
          child: TextField(
            style: const TextStyle(color: gray_100),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(color: gray_300),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

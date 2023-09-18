import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuantatiSelector extends StatefulWidget {
  const QuantatiSelector({super.key});

  @override
  State<QuantatiSelector> createState() => _QuantatiSelectorState();
}

class _QuantatiSelectorState extends State<QuantatiSelector> {
  List<String> mesureMetricsValues = ['UN.', 'KG', 'L'];
  String? dropMetricValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quantidade',
          style: TextStyle(
            color: gray_200,
            fontSize: 12,
          ),
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 66,
              decoration: const BoxDecoration(
                color: gray_500,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6), 
                  bottomLeft: Radius.circular(6)
                ),
              ),
              child: const Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "0",
                    hintStyle: TextStyle(
                      color: gray_100,
                    ),
                  ),
                  style: TextStyle(
                    color: gray_100,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 66,
              decoration: const BoxDecoration(
                color: gray_400,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6), 
                  bottomRight: Radius.circular(6)
                ),
              ),
              child: DropdownButton(
                value: dropMetricValue ?? mesureMetricsValues.first,
                onChanged: (value) {
                  setState(() {
                    dropMetricValue = value!;               
                  }); 
                },
                dropdownColor: gray_400,
                items: mesureMetricsValues.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        color: gray_100,
                        fontSize: 14,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

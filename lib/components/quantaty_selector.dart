import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';

typedef MesureMetricsSelected = void Function(String);

class QuantatiSelector extends StatefulWidget {
  final TextEditingController controller;
  final MesureMetricsSelected mesureMetricsSelected;
  const QuantatiSelector({
    required this.controller,
    required this.mesureMetricsSelected,
    super.key
  });

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
              child: Center(
                child: TextField(
                  controller: widget.controller,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "0",
                    hintStyle: TextStyle(
                      color: gray_100,
                    ),
                  ),
                  style: const TextStyle(
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
                  widget.mesureMetricsSelected(value!);
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

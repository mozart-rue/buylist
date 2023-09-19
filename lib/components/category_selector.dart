import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';

typedef CategorySelected = void Function(String);

class CategorySelector extends StatefulWidget {
  final CategorySelected categorySelected;
  const CategorySelector({
    required this.categorySelected,
    super.key
  });

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  List<String> list = ['Padaria', 'Legume', 'Carne', 'Fruta', 'Bebida'];
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categoria',
          style: TextStyle(
            color: gray_200,
            fontSize: 12,
          ),
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: gray_500,
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButton(
            value: dropDownValue ?? list.first,
            onChanged: (value) {
              setState(() {
                dropDownValue = value!;               
              });
              widget.categorySelected(value!);
            },
            underline: Container(
              decoration: BoxDecoration(
                border: Border.all(color: gray_300),
                color: gray_400,
              ),
            ),
            dropdownColor: gray_400,
            hint: const Text(
              'Selecione',
              style: TextStyle(
                color: gray_200,
                fontSize: 14,
              ),
            ),
            items: list.map<DropdownMenuItem<String>>((String value) {
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
    );
  }
}

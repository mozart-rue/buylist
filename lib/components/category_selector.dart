import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  List<String> list = ['Selecione', 'Padaria', 'Legume', 'Carne', 'Fruta', 'Bebida'];
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
        DropdownButton(
          value: dropDownValue ?? list.first,
          onChanged: (value) {
            setState(() {
              dropDownValue = value!;               
            }); 
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}

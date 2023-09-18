import 'package:buylist/components/add_item_button.dart';
import 'package:buylist/components/app_background.dart';
import 'package:buylist/components/category_selector.dart';
import 'package:buylist/components/input_container.dart';
import 'package:buylist/components/quantaty_selector.dart';
import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        child: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 68)),
              const Text(
                'Lista De Compras',
                textAlign: TextAlign.start,
                style: TextStyle( 
                  color: gray_100,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20,),
              Column(
                children: [
                  const InputContainer(),
                  const SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const QuantatiSelector(),
                      const CategorySelector(),
                      AddItemButton(
                        onTap: (){},
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
